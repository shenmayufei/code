# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lxg/code/lab_v4l2_yuyv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lxg/code/lab_v4l2_yuyv/build

# Include any dependencies generated for this target.
include CMakeFiles/driver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/driver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/driver.dir/flags.make

CMakeFiles/driver.dir/driver.c.o: CMakeFiles/driver.dir/flags.make
CMakeFiles/driver.dir/driver.c.o: ../driver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/lab_v4l2_yuyv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/driver.dir/driver.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/driver.dir/driver.c.o   -c /home/lxg/code/lab_v4l2_yuyv/driver.c

CMakeFiles/driver.dir/driver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/driver.dir/driver.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lxg/code/lab_v4l2_yuyv/driver.c > CMakeFiles/driver.dir/driver.c.i

CMakeFiles/driver.dir/driver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/driver.dir/driver.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lxg/code/lab_v4l2_yuyv/driver.c -o CMakeFiles/driver.dir/driver.c.s

CMakeFiles/driver.dir/driver.c.o.requires:

.PHONY : CMakeFiles/driver.dir/driver.c.o.requires

CMakeFiles/driver.dir/driver.c.o.provides: CMakeFiles/driver.dir/driver.c.o.requires
	$(MAKE) -f CMakeFiles/driver.dir/build.make CMakeFiles/driver.dir/driver.c.o.provides.build
.PHONY : CMakeFiles/driver.dir/driver.c.o.provides

CMakeFiles/driver.dir/driver.c.o.provides.build: CMakeFiles/driver.dir/driver.c.o


CMakeFiles/driver.dir/driverPakage.cpp.o: CMakeFiles/driver.dir/flags.make
CMakeFiles/driver.dir/driverPakage.cpp.o: ../driverPakage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/lab_v4l2_yuyv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/driver.dir/driverPakage.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/driver.dir/driverPakage.cpp.o -c /home/lxg/code/lab_v4l2_yuyv/driverPakage.cpp

CMakeFiles/driver.dir/driverPakage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/driver.dir/driverPakage.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxg/code/lab_v4l2_yuyv/driverPakage.cpp > CMakeFiles/driver.dir/driverPakage.cpp.i

CMakeFiles/driver.dir/driverPakage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/driver.dir/driverPakage.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxg/code/lab_v4l2_yuyv/driverPakage.cpp -o CMakeFiles/driver.dir/driverPakage.cpp.s

CMakeFiles/driver.dir/driverPakage.cpp.o.requires:

.PHONY : CMakeFiles/driver.dir/driverPakage.cpp.o.requires

CMakeFiles/driver.dir/driverPakage.cpp.o.provides: CMakeFiles/driver.dir/driverPakage.cpp.o.requires
	$(MAKE) -f CMakeFiles/driver.dir/build.make CMakeFiles/driver.dir/driverPakage.cpp.o.provides.build
.PHONY : CMakeFiles/driver.dir/driverPakage.cpp.o.provides

CMakeFiles/driver.dir/driverPakage.cpp.o.provides.build: CMakeFiles/driver.dir/driverPakage.cpp.o


# Object files for target driver
driver_OBJECTS = \
"CMakeFiles/driver.dir/driver.c.o" \
"CMakeFiles/driver.dir/driverPakage.cpp.o"

# External object files for target driver
driver_EXTERNAL_OBJECTS =

driver: CMakeFiles/driver.dir/driver.c.o
driver: CMakeFiles/driver.dir/driverPakage.cpp.o
driver: CMakeFiles/driver.dir/build.make
driver: /usr/local/lib/libopencv_videostab.so.2.4.9
driver: /usr/local/lib/libopencv_ts.a
driver: /usr/local/lib/libopencv_superres.so.2.4.9
driver: /usr/local/lib/libopencv_stitching.so.2.4.9
driver: /usr/local/lib/libopencv_contrib.so.2.4.9
driver: /usr/local/lib/libopencv_nonfree.so.2.4.9
driver: /usr/local/lib/libopencv_ocl.so.2.4.9
driver: /usr/local/lib/libopencv_gpu.so.2.4.9
driver: /usr/local/lib/libopencv_photo.so.2.4.9
driver: /usr/local/lib/libopencv_objdetect.so.2.4.9
driver: /usr/local/lib/libopencv_legacy.so.2.4.9
driver: /usr/local/lib/libopencv_video.so.2.4.9
driver: /usr/local/lib/libopencv_ml.so.2.4.9
driver: /usr/local/lib/libopencv_calib3d.so.2.4.9
driver: /usr/local/lib/libopencv_features2d.so.2.4.9
driver: /usr/local/lib/libopencv_highgui.so.2.4.9
driver: /usr/local/lib/libopencv_imgproc.so.2.4.9
driver: /usr/local/lib/libopencv_flann.so.2.4.9
driver: /usr/local/lib/libopencv_core.so.2.4.9
driver: CMakeFiles/driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lxg/code/lab_v4l2_yuyv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable driver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/driver.dir/build: driver

.PHONY : CMakeFiles/driver.dir/build

CMakeFiles/driver.dir/requires: CMakeFiles/driver.dir/driver.c.o.requires
CMakeFiles/driver.dir/requires: CMakeFiles/driver.dir/driverPakage.cpp.o.requires

.PHONY : CMakeFiles/driver.dir/requires

CMakeFiles/driver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/driver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/driver.dir/clean

CMakeFiles/driver.dir/depend:
	cd /home/lxg/code/lab_v4l2_yuyv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lxg/code/lab_v4l2_yuyv /home/lxg/code/lab_v4l2_yuyv /home/lxg/code/lab_v4l2_yuyv/build /home/lxg/code/lab_v4l2_yuyv/build /home/lxg/code/lab_v4l2_yuyv/build/CMakeFiles/driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/driver.dir/depend
