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
CMAKE_SOURCE_DIR = /home/lxg/code/backgroundSubstraction

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lxg/code/backgroundSubstraction/build

# Include any dependencies generated for this target.
include opencvTest/libvibe/CMakeFiles/vibe++_static.dir/depend.make

# Include the progress variables for this target.
include opencvTest/libvibe/CMakeFiles/vibe++_static.dir/progress.make

# Include the compile flags for this target's objects.
include opencvTest/libvibe/CMakeFiles/vibe++_static.dir/flags.make

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/flags.make
opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o: ../opencvTest/libvibe/libvibe++/common/ViBeBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/backgroundSubstraction/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o"
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o -c /home/lxg/code/backgroundSubstraction/opencvTest/libvibe/libvibe++/common/ViBeBase.cpp

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.i"
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxg/code/backgroundSubstraction/opencvTest/libvibe/libvibe++/common/ViBeBase.cpp > CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.i

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.s"
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxg/code/backgroundSubstraction/opencvTest/libvibe/libvibe++/common/ViBeBase.cpp -o CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.s

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.requires:

.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.requires

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.provides: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.requires
	$(MAKE) -f opencvTest/libvibe/CMakeFiles/vibe++_static.dir/build.make opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.provides.build
.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.provides

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.provides.build: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o


# Object files for target vibe++_static
vibe_______static_OBJECTS = \
"CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o"

# External object files for target vibe++_static
vibe_______static_EXTERNAL_OBJECTS =

libvibe++.a: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o
libvibe++.a: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/build.make
libvibe++.a: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lxg/code/backgroundSubstraction/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../libvibe++.a"
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && $(CMAKE_COMMAND) -P CMakeFiles/vibe++_static.dir/cmake_clean_target.cmake
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vibe++_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencvTest/libvibe/CMakeFiles/vibe++_static.dir/build: libvibe++.a

.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/build

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/requires: opencvTest/libvibe/CMakeFiles/vibe++_static.dir/libvibe++/common/ViBeBase.cpp.o.requires

.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/requires

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/clean:
	cd /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe && $(CMAKE_COMMAND) -P CMakeFiles/vibe++_static.dir/cmake_clean.cmake
.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/clean

opencvTest/libvibe/CMakeFiles/vibe++_static.dir/depend:
	cd /home/lxg/code/backgroundSubstraction/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lxg/code/backgroundSubstraction /home/lxg/code/backgroundSubstraction/opencvTest/libvibe /home/lxg/code/backgroundSubstraction/build /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe /home/lxg/code/backgroundSubstraction/build/opencvTest/libvibe/CMakeFiles/vibe++_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencvTest/libvibe/CMakeFiles/vibe++_static.dir/depend

