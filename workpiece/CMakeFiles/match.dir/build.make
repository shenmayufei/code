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
CMAKE_SOURCE_DIR = /home/lxg/code/workpiece

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lxg/code/workpiece

# Include any dependencies generated for this target.
include CMakeFiles/match.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/match.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/match.dir/flags.make

CMakeFiles/match.dir/template.cpp.o: CMakeFiles/match.dir/flags.make
CMakeFiles/match.dir/template.cpp.o: template.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/workpiece/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/match.dir/template.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/match.dir/template.cpp.o -c /home/lxg/code/workpiece/template.cpp

CMakeFiles/match.dir/template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/match.dir/template.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxg/code/workpiece/template.cpp > CMakeFiles/match.dir/template.cpp.i

CMakeFiles/match.dir/template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/match.dir/template.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxg/code/workpiece/template.cpp -o CMakeFiles/match.dir/template.cpp.s

CMakeFiles/match.dir/template.cpp.o.requires:

.PHONY : CMakeFiles/match.dir/template.cpp.o.requires

CMakeFiles/match.dir/template.cpp.o.provides: CMakeFiles/match.dir/template.cpp.o.requires
	$(MAKE) -f CMakeFiles/match.dir/build.make CMakeFiles/match.dir/template.cpp.o.provides.build
.PHONY : CMakeFiles/match.dir/template.cpp.o.provides

CMakeFiles/match.dir/template.cpp.o.provides.build: CMakeFiles/match.dir/template.cpp.o


# Object files for target match
match_OBJECTS = \
"CMakeFiles/match.dir/template.cpp.o"

# External object files for target match
match_EXTERNAL_OBJECTS =

match: CMakeFiles/match.dir/template.cpp.o
match: CMakeFiles/match.dir/build.make
match: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
match: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
match: CMakeFiles/match.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lxg/code/workpiece/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable match"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/match.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/match.dir/build: match

.PHONY : CMakeFiles/match.dir/build

CMakeFiles/match.dir/requires: CMakeFiles/match.dir/template.cpp.o.requires

.PHONY : CMakeFiles/match.dir/requires

CMakeFiles/match.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/match.dir/cmake_clean.cmake
.PHONY : CMakeFiles/match.dir/clean

CMakeFiles/match.dir/depend:
	cd /home/lxg/code/workpiece && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lxg/code/workpiece /home/lxg/code/workpiece /home/lxg/code/workpiece /home/lxg/code/workpiece /home/lxg/code/workpiece/CMakeFiles/match.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/match.dir/depend

