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
CMAKE_SOURCE_DIR = /home/lxg/code/optical-flow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lxg/code/optical-flow/build

# Include any dependencies generated for this target.
include driver/CMakeFiles/cameraDriver.dir/depend.make

# Include the progress variables for this target.
include driver/CMakeFiles/cameraDriver.dir/progress.make

# Include the compile flags for this target's objects.
include driver/CMakeFiles/cameraDriver.dir/flags.make

driver/CMakeFiles/cameraDriver.dir/driver.c.o: driver/CMakeFiles/cameraDriver.dir/flags.make
driver/CMakeFiles/cameraDriver.dir/driver.c.o: ../driver/driver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/optical-flow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object driver/CMakeFiles/cameraDriver.dir/driver.c.o"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cameraDriver.dir/driver.c.o   -c /home/lxg/code/optical-flow/driver/driver.c

driver/CMakeFiles/cameraDriver.dir/driver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cameraDriver.dir/driver.c.i"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lxg/code/optical-flow/driver/driver.c > CMakeFiles/cameraDriver.dir/driver.c.i

driver/CMakeFiles/cameraDriver.dir/driver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cameraDriver.dir/driver.c.s"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lxg/code/optical-flow/driver/driver.c -o CMakeFiles/cameraDriver.dir/driver.c.s

driver/CMakeFiles/cameraDriver.dir/driver.c.o.requires:

.PHONY : driver/CMakeFiles/cameraDriver.dir/driver.c.o.requires

driver/CMakeFiles/cameraDriver.dir/driver.c.o.provides: driver/CMakeFiles/cameraDriver.dir/driver.c.o.requires
	$(MAKE) -f driver/CMakeFiles/cameraDriver.dir/build.make driver/CMakeFiles/cameraDriver.dir/driver.c.o.provides.build
.PHONY : driver/CMakeFiles/cameraDriver.dir/driver.c.o.provides

driver/CMakeFiles/cameraDriver.dir/driver.c.o.provides.build: driver/CMakeFiles/cameraDriver.dir/driver.c.o


driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o: driver/CMakeFiles/cameraDriver.dir/flags.make
driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o: ../driver/driverPakage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxg/code/optical-flow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cameraDriver.dir/driverPakage.cpp.o -c /home/lxg/code/optical-flow/driver/driverPakage.cpp

driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cameraDriver.dir/driverPakage.cpp.i"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxg/code/optical-flow/driver/driverPakage.cpp > CMakeFiles/cameraDriver.dir/driverPakage.cpp.i

driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cameraDriver.dir/driverPakage.cpp.s"
	cd /home/lxg/code/optical-flow/build/driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxg/code/optical-flow/driver/driverPakage.cpp -o CMakeFiles/cameraDriver.dir/driverPakage.cpp.s

driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.requires:

.PHONY : driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.requires

driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.provides: driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.requires
	$(MAKE) -f driver/CMakeFiles/cameraDriver.dir/build.make driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.provides.build
.PHONY : driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.provides

driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.provides.build: driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o


# Object files for target cameraDriver
cameraDriver_OBJECTS = \
"CMakeFiles/cameraDriver.dir/driver.c.o" \
"CMakeFiles/cameraDriver.dir/driverPakage.cpp.o"

# External object files for target cameraDriver
cameraDriver_EXTERNAL_OBJECTS =

driver/libcameraDriver.a: driver/CMakeFiles/cameraDriver.dir/driver.c.o
driver/libcameraDriver.a: driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o
driver/libcameraDriver.a: driver/CMakeFiles/cameraDriver.dir/build.make
driver/libcameraDriver.a: driver/CMakeFiles/cameraDriver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lxg/code/optical-flow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libcameraDriver.a"
	cd /home/lxg/code/optical-flow/build/driver && $(CMAKE_COMMAND) -P CMakeFiles/cameraDriver.dir/cmake_clean_target.cmake
	cd /home/lxg/code/optical-flow/build/driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cameraDriver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
driver/CMakeFiles/cameraDriver.dir/build: driver/libcameraDriver.a

.PHONY : driver/CMakeFiles/cameraDriver.dir/build

driver/CMakeFiles/cameraDriver.dir/requires: driver/CMakeFiles/cameraDriver.dir/driver.c.o.requires
driver/CMakeFiles/cameraDriver.dir/requires: driver/CMakeFiles/cameraDriver.dir/driverPakage.cpp.o.requires

.PHONY : driver/CMakeFiles/cameraDriver.dir/requires

driver/CMakeFiles/cameraDriver.dir/clean:
	cd /home/lxg/code/optical-flow/build/driver && $(CMAKE_COMMAND) -P CMakeFiles/cameraDriver.dir/cmake_clean.cmake
.PHONY : driver/CMakeFiles/cameraDriver.dir/clean

driver/CMakeFiles/cameraDriver.dir/depend:
	cd /home/lxg/code/optical-flow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lxg/code/optical-flow /home/lxg/code/optical-flow/driver /home/lxg/code/optical-flow/build /home/lxg/code/optical-flow/build/driver /home/lxg/code/optical-flow/build/driver/CMakeFiles/cameraDriver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : driver/CMakeFiles/cameraDriver.dir/depend
