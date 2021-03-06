#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <linux/types.h>
#include <linux/videodev2.h>
 
#include "v4l2grab.h"
 


#define  TRUE	1
#define  FALSE	0

#define FILE_VIDEO 	"/dev/video1"
#define BMP      	"/home/lxg/codedata/image_bmp.bmp"
#define YUV			"/home/lxg/codedata/image_yuv.yuv"

#define  IMAGEWIDTH    320
#define  IMAGEHEIGHT   240

static   int      fd;
static   struct   v4l2_capability   cap;  //摄像头的一些自身提供的信息，及支持的操作
struct v4l2_fmtdesc fmtdesc;
struct v4l2_format fmt,fmtack;
struct v4l2_streamparm setfps;  
struct v4l2_requestbuffers req;
struct v4l2_buffer buf;
enum v4l2_buf_type type;
unsigned char frame_buffer[IMAGEWIDTH*IMAGEHEIGHT*3];


// 指针类型的结构体
struct buffer
{
	void * start;
	unsigned int length;
} * buffers; 
 
int init_v4l2(void)
{
	int i;
	int ret = 0;
	
	//opendev
	if ((fd = open(FILE_VIDEO, O_RDWR)) == -1) 
	{
		printf("Error opening V4L interface\n");
		return (FALSE);
	}

	//query cap
	if (ioctl(fd, VIDIOC_QUERYCAP, &cap) == -1) 
	{
		printf("Error opening device %s: unable to query device.\n",FILE_VIDEO);
		return (FALSE);
	}
	else
	{
     	printf("driver:\t\t%s\n",cap.driver);
     	printf("card:\t\t%s\n",cap.card);
     	printf("bus_info:\t%s\n",cap.bus_info);
     	printf("version:\t%d\n",cap.version);
     	printf("capabilities:\t%x\n",cap.capabilities);
     	
     	if ((cap.capabilities & V4L2_CAP_VIDEO_CAPTURE) == V4L2_CAP_VIDEO_CAPTURE) 
     	{
			printf("Device %s: supports capture.\n",FILE_VIDEO);
		}

		if ((cap.capabilities & V4L2_CAP_STREAMING) == V4L2_CAP_STREAMING)  // support streaming i/o包括两种memory map and user pointer
		{
			printf("Device %s: supports streaming.\n",FILE_VIDEO);
		}

		if ((cap.capabilities & V4L2_CAP_READWRITE) == V4L2_CAP_READWRITE) 
		{
			printf("Device %s: supports read write.\n",FILE_VIDEO);
		}
		else
		{
			printf("Device %s: don't support read write.\n",FILE_VIDEO);
		}

		if ((cap.capabilities & V4L2_CAP_VIDEO_OVERLAY) == V4L2_CAP_VIDEO_OVERLAY)
		{
			printf("Device %s: supports overlay.\n", FILE_VIDEO);
		}
		else
		{
			printf("Device %s: don't support overlay.\n", FILE_VIDEO);
		}
	} 
	
	//emu(enumerate) all support fmt
	fmtdesc.index=0;
	fmtdesc.type=V4L2_BUF_TYPE_VIDEO_CAPTURE;  // type of the data stream
	// fmtdesc.type=V4L2_BUF_TYPE_VIDEO_OUTPUT;  //怎么会不支持这个
	// fmtdesc.type=V4L2_BUF_TYPE_VIDEO_OVERLAY;
	printf("Support format:\n");
	while(ioctl(fd,VIDIOC_ENUM_FMT,&fmtdesc)!=-1)
	{
		printf("\t%d.%s  ",fmtdesc.index+1,fmtdesc.description);
		printf("\t%ud\n",fmtdesc.pixelformat);
		
		fmtdesc.index++;
	}
	


	printf("description of the camera end\n\n");
	
	// can not get camera default set before set parameter
	
    //set fmt(formate)  v4l2_format fmt,fmtack;
    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    // fmt.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;  //没有这个功能
	fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;
	// fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUV422P; //不支持

	fmt.fmt.pix.height = IMAGEHEIGHT;
	fmt.fmt.pix.width = IMAGEWIDTH;
	fmt.fmt.pix.field = V4L2_FIELD_INTERLACED;//视频通常是隔行扫描，也可以只要高或低，
	
	// s->set
	if(ioctl(fd, VIDIOC_S_FMT, &fmt) == -1)
	{
		printf("Unable to set format\n");
		return FALSE;
	} 	
	// g->get
	if(ioctl(fd, VIDIOC_G_FMT, &fmt) == -1)
	{
		printf("Unable to get format\n");
		return FALSE;
	} 
	else
	{
		printf("camera set after set\n");
     	printf("fmt.type:\t\t%d\n",fmt.type);
     	printf("pix.pixelformat:\t%c%c%c%c\n",fmt.fmt.pix.pixelformat & 0xFF, (fmt.fmt.pix.pixelformat >> 8) & 0xFF,(fmt.fmt.pix.pixelformat >> 16) & 0xFF, (fmt.fmt.pix.pixelformat >> 24) & 0xFF);
     	printf("pix.height:\t\t%d\n",fmt.fmt.pix.height);
     	printf("pix.width:\t\t%d\n",fmt.fmt.pix.width);
     	printf("pix.field:\t\t%d\n",fmt.fmt.pix.field);
	}

	//set fps streamer param
	setfps.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	setfps.parm.capture.timeperframe.numerator = 10;
	setfps.parm.capture.timeperframe.denominator = 10;
	
	printf("init %s \t[OK]\n",FILE_VIDEO);

	// struct v4l2_frequency fre;
	// if(ioctl(fd, VIDIOC_G_FREQUENCY, &fre) == -1)
	// {
	// 	printf("get frequncy fail\n");
	// 	return FALSE;
	// }
	// else
	// {
	// 	printf("frequency %d", fre.frequency);
	// }

	struct v4l2_standard vstd;
	vstd.index = 0;
	printf("frame period request\n");
	while(ioctl(fd, VIDIOC_ENUMSTD, &vstd) != -1)
	{
		printf("video standard %s\n", vstd.name);
		printf("frameperiod %d", vstd.frameperiod.numerator / vstd.frameperiod.denominator);
		vstd.index++;
	}
}

int v4l2_grab(void)
{
	unsigned int n_buffers;
	
	//request for 4 buffers 
	req.count=4; // the request may be not satisfied because lack of memory in the device
	req.type=V4L2_BUF_TYPE_VIDEO_CAPTURE;
	req.memory=V4L2_MEMORY_MMAP; // set user pointer i/o or memory map

	// initiate memory mapping or user pointer i/o // 
	if(ioctl(fd,VIDIOC_REQBUFS,&req)==-1) //kernel space 
	{
		printf("request for buffers error\n");
	}

	//mmap for buffers, user space 
	buffers = malloc(req.count*sizeof (*buffers));
	if (!buffers) 
	{
		printf ("Out of memory\n");
		return(FALSE);
	}
	
	for (n_buffers = 0; n_buffers < req.count; n_buffers++) 
	{
		buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		buf.memory = V4L2_MEMORY_MMAP;
		buf.index = n_buffers;

		//query the status of a buffer
		if (ioctl (fd, VIDIOC_QUERYBUF, &buf) == -1)
		{
			printf("query buffer error\n");
			return(FALSE);
		}

		buffers[n_buffers].length = buf.length;

		//map device memory into application address space
		buffers[n_buffers].start = mmap(NULL, buf.length, PROT_READ |PROT_WRITE, MAP_SHARED, fd, buf.m.offset);
		if (buffers[n_buffers].start == MAP_FAILED)
		{
			printf("buffer map error\n");
			return(FALSE);
		}
	}
		
	// start capturing , queue exchange a buffer with the driver
	for (n_buffers = 0; n_buffers < req.count; n_buffers++)
	{
		buf.index = n_buffers;
		ioctl(fd, VIDIOC_QBUF, &buf);
	} 
	
	type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	ioctl (fd, VIDIOC_STREAMON, &type);
	
	ioctl(fd, VIDIOC_DQBUF, &buf); //read data

    printf("grab yuyv OK\n");
	return(TRUE);
}


int yuyv_2_rgb888(void)
{
	int           i,j;
    unsigned char y1,y2,u,v;
    int r1,g1,b1,r2,g2,b2;
    char * pointer;
    
	pointer = buffers[0].start;
	
    for(i=0;i<480;i++)
    {
    	for(j=0;j<320;j++)
    	{
			// each four bytes is two pixels
    		y1 = *( pointer + (i*320+j)*4);
    		u  = *( pointer + (i*320+j)*4 + 1);
    		y2 = *( pointer + (i*320+j)*4 + 2);
    		v  = *( pointer + (i*320+j)*4 + 3);
    		
    		r1 = y1 + 1.042*(v-128);
    		g1 = y1 - 0.34414*(u-128) - 0.71414*(v-128);
    		b1 = y1 + 1.772*(u-128);
    		
    		r2 = y2 + 1.042*(v-128);
    		g2 = y2 - 0.34414*(u-128) - 0.71414*(v-128);
    		b2 = y2 + 1.772*(u-128);
    		
    		if(r1>255)
    			r1 = 255;
    		else if(r1<0)
    			r1 = 0;
    		
    		if(b1>255)
    			b1 = 255;
    		else if(b1<0)
    			b1 = 0;	
    		
    		if(g1>255)
    			g1 = 255;
    		else if(g1<0)
    			g1 = 0;	
    			
    		if(r2>255)
    			r2 = 255;
    		else if(r2<0)
    			r2 = 0;
    		
    		if(b2>255)
    			b2 = 255;
    		else if(b2<0)
    			b2 = 0;	
    		
    		if(g2>255)
    			g2 = 255;
    		else if(g2<0)
    			g2 = 0;		
    			
    		*(frame_buffer + ((480-1-i)*320+j)*6    ) = (unsigned char)b1;
    		*(frame_buffer + ((480-1-i)*320+j)*6 + 1) = (unsigned char)g1;
    		*(frame_buffer + ((480-1-i)*320+j)*6 + 2) = (unsigned char)r1;
    		*(frame_buffer + ((480-1-i)*320+j)*6 + 3) = (unsigned char)b2;
    		*(frame_buffer + ((480-1-i)*320+j)*6 + 4) = (unsigned char)g2;
    		*(frame_buffer + ((480-1-i)*320+j)*6 + 5) = (unsigned char)r2;
    	}
    }
    printf("change to RGB OK \n");
}
void yuyv2gray(void)
{
	unsigned char *p1 = frame_buffer;
	unsigned char *p2 = buffers[0].start;
		
	for(int i = 0; i < IMAGEHEIGHT; ++i)
	{
		for(int j = 0; j < IMAGEWIDTH; ++j)
		{
			*p1 = *p2;
			++p1;
			++p2;
			++p2;
		}
	}
}

int close_v4l2(void)
{
     if(fd != -1) 
     {
         close(fd);
         return (TRUE);
     }
     return (FALSE);
}


int cameraRead( unsigned char **data, int *w, int *h)
{
    v4l2_grab();
    yuyv2gray();

	// *data = (unsigned char *)buffers[0].start;
	*data = frame_buffer;

	if(data == NULL)
	{
		printf("data pointer is NULL\n");
	}

	*w = IMAGEWIDTH;
	*h = IMAGEHEIGHT; 

    return(TRUE);
}

int deviceRead(void)
{

    FILE * fp1,* fp2;

    BITMAPFILEHEADER   bf;
    BITMAPINFOHEADER   bi;
   

    fp1 = fopen(BMP, "wb");
    if(!fp1)
	{
		printf("open "BMP"error\n");
		return(FALSE);
	}
	
	fp2 = fopen(YUV, "wb");
    if(!fp2)
	{
		printf("open "YUV"error\n");
		return(FALSE);
	}

	if(init_v4l2() == FALSE) 
	{
     	return(FALSE);
	}
	
	//Set BITMAPINFOHEADER
	bi.biSize = 40;
	bi.biWidth = IMAGEWIDTH;
	bi.biHeight = IMAGEHEIGHT;
	bi.biPlanes = 1;
	bi.biBitCount = 24;
	bi.biCompression = 0;
	bi.biSizeImage = IMAGEWIDTH*IMAGEHEIGHT*3;
	bi.biXPelsPerMeter = 0;
	bi.biYPelsPerMeter = 0;
	bi.biClrUsed = 0;
	bi.biClrImportant = 0;
 

    //Set BITMAPFILEHEADER
    bf.bfType = 0x4d42;
    bf.bfSize = 54 + bi.biSizeImage;     
	bf.bfReserved = 0;
    bf.bfOffBits = 54;
    
    v4l2_grab();
    fwrite(buffers[0].start, 640*480*2, 1, fp2);
    printf("save "YUV"OK\n");
    
    yuyv_2_rgb888();
    fwrite(&bf, 14, 1, fp1);
    fwrite(&bi, 40, 1, fp1);    
    fwrite(frame_buffer, bi.biSizeImage, 1, fp1);
    printf("save "BMP"OK\n");
    
    
    fclose(fp1);
    fclose(fp2);
    close_v4l2();
    
    return(TRUE);
}
