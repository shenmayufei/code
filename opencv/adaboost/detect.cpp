#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"

#include <iostream>
#include <stdio.h>

using namespace std;
using namespace cv;

/** Function Headers */
void detectAndDisplay( Mat frame );

/** Global variables */
// String face_cascade_name = "/home/lxg/codedata/headXml/goodClassifier/cascade_harr_1950_10000_24_24.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/goodClassifier/cascade_hog__1950_10000_24_24.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/goodClassifier/cascade_lbp_1200_6000_24_24.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascade_tbb_haar_2800_6000.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascade_haarall.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascade_haarbasic.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascadeWide_basis.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascadeWide_all.xml";
// String face_cascade_name = "/home/lxg/codedata/headXml/cascadeWide_1200_6000_haar.xml";
String face_cascade_name = "/home/lxg/codedata/headXml/HeadDetector_xiong.xml";

// String face_cascade_name = "/home/lxg/codedata/headXml/goodClassifier/cascade_harr_1200_7000_bigNegImages.xml";

// String eyes_cascade_name = "haarcascade_eye_tree_eyeglasses.xml";
CascadeClassifier face_cascade;
// CascadeClassifier eyes_cascade;
String window_name = "Capture - Face detection";

VideoWriter writeVideo;

/** @function main */
int main( void )
{
    VideoCapture capture;
    Mat frame;

    //-- 1. Load the cascades
    if( !face_cascade.load( face_cascade_name ) ){ printf("--(!)Error loading face cascade\n"); return -1; };
    // if( !eyes_cascade.load( eyes_cascade_name ) ){ printf("--(!)Error loading eyes cascade\n"); return -1; };

    //-- 2. Read the video stream
    // capture.open( "/home/lxg/zqq2017090803.avi" );
    // capture.open( "/home/lxg/zqq2017090801.avi" );
    // capture.open("/home/lxg/codedata/walmat.mp4");
    capture.open("/home/lxg/livet2.avi");
    // capture.open(0);
    

    // VideoCapture VideoStream();
    
    if ( ! capture.isOpened() ) { printf("--(!)Error opening video capture\n"); return -1; }
    
    int height = capture.get(CAP_PROP_FRAME_HEIGHT);
    int width = capture.get(CAP_PROP_FRAME_WIDTH);

    int fourcc = CV_FOURCC('X','V','I','D');
    writeVideo.open("/home/lxg/codedata/headXml/writer.avi",fourcc,25,Size(width,height),true);

    while (  capture.read(frame) )
    {
        if( frame.empty() )
        {
            printf(" --(!) No captured frame -- Break!");
            break;
        }

        //-- 3. Apply the classifier to the frame
        detectAndDisplay( frame );

        int c = waitKey(10);
        if( (char)c == 'b' )
        { 
            waitKey(0);
        } // escape
        else if(c == 27)
        {
            break;
        }

    }
    return 0;
}

/** @function detectAndDisplay */
void detectAndDisplay( Mat frame )
{
    double t = (double)getTickCount();

    std::vector<Rect> faces;
    Mat frame_gray;

    cvtColor( frame, frame_gray, COLOR_BGR2GRAY );
    equalizeHist( frame_gray, frame_gray );

    //-- Detect faces
    face_cascade.detectMultiScale( frame_gray, faces, 1.1, 1, 0|CASCADE_SCALE_IMAGE, Size(30, 30) );

    for( size_t i = 0; i < faces.size(); i++ )
    {
        Point center( faces[i].x + faces[i].width/2, faces[i].y + faces[i].height/2 );
        // ellipse( frame, center, Size( faces[i].width/2, faces[i].height/2), 0, 0, 360, Scalar( 255, 0, 255 ), 4, 8, 0 );
        rectangle(frame, faces[i], Scalar(0, 0, 255), 2);
        // Mat faceROI = frame_gray( faces[i] );
        // std::vector<Rect> eyes;

        // //-- In each face, detect eyes
        // eyes_cascade.detectMultiScale( faceROI, eyes, 1.1, 2, 0 |CASCADE_SCALE_IMAGE, Size(30, 30) );

        // for( size_t j = 0; j < eyes.size(); j++ )
        // {
        //     Point eye_center( faces[i].x + eyes[j].x + eyes[j].width/2, faces[i].y + eyes[j].y + eyes[j].height/2 );
        //     int radius = cvRound( (eyes[j].width + eyes[j].height)*0.25 );
        //     circle( frame, eye_center, radius, Scalar( 255, 0, 0 ), 4, 8, 0 );
        // }
    }
    //-- Show what you got
    imshow( window_name, frame );
    writeVideo << frame;

    printf("%f s \n", (getTickCount() - t) / getTickFrequency());
}