# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ww/opencv/test/DM_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ww/opencv/test/DM_test

# Include any dependencies generated for this target.
include CMakeFiles/DM_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DM_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DM_test.dir/flags.make

CMakeFiles/DM_test.dir/main.cpp.o: CMakeFiles/DM_test.dir/flags.make
CMakeFiles/DM_test.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ww/opencv/test/DM_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DM_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DM_test.dir/main.cpp.o -c /home/ww/opencv/test/DM_test/main.cpp

CMakeFiles/DM_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DM_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ww/opencv/test/DM_test/main.cpp > CMakeFiles/DM_test.dir/main.cpp.i

CMakeFiles/DM_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DM_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ww/opencv/test/DM_test/main.cpp -o CMakeFiles/DM_test.dir/main.cpp.s

CMakeFiles/DM_test.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/DM_test.dir/main.cpp.o.requires

CMakeFiles/DM_test.dir/main.cpp.o.provides: CMakeFiles/DM_test.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/DM_test.dir/build.make CMakeFiles/DM_test.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/DM_test.dir/main.cpp.o.provides

CMakeFiles/DM_test.dir/main.cpp.o.provides.build: CMakeFiles/DM_test.dir/main.cpp.o


# Object files for target DM_test
DM_test_OBJECTS = \
"CMakeFiles/DM_test.dir/main.cpp.o"

# External object files for target DM_test
DM_test_EXTERNAL_OBJECTS =

DM_test: CMakeFiles/DM_test.dir/main.cpp.o
DM_test: CMakeFiles/DM_test.dir/build.make
DM_test: /usr/local/lib/libopencv_gapi.so.4.5.5
DM_test: /usr/local/lib/libopencv_highgui.so.4.5.5
DM_test: /usr/local/lib/libopencv_ml.so.4.5.5
DM_test: /usr/local/lib/libopencv_objdetect.so.4.5.5
DM_test: /usr/local/lib/libopencv_photo.so.4.5.5
DM_test: /usr/local/lib/libopencv_stitching.so.4.5.5
DM_test: /usr/local/lib/libopencv_video.so.4.5.5
DM_test: /usr/local/lib/libopencv_videoio.so.4.5.5
DM_test: /usr/local/lib/libopencv_imgcodecs.so.4.5.5
DM_test: /usr/local/lib/libopencv_dnn.so.4.5.5
DM_test: /usr/local/lib/libopencv_calib3d.so.4.5.5
DM_test: /usr/local/lib/libopencv_features2d.so.4.5.5
DM_test: /usr/local/lib/libopencv_flann.so.4.5.5
DM_test: /usr/local/lib/libopencv_imgproc.so.4.5.5
DM_test: /usr/local/lib/libopencv_core.so.4.5.5
DM_test: CMakeFiles/DM_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ww/opencv/test/DM_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DM_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DM_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DM_test.dir/build: DM_test

.PHONY : CMakeFiles/DM_test.dir/build

CMakeFiles/DM_test.dir/requires: CMakeFiles/DM_test.dir/main.cpp.o.requires

.PHONY : CMakeFiles/DM_test.dir/requires

CMakeFiles/DM_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DM_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DM_test.dir/clean

CMakeFiles/DM_test.dir/depend:
	cd /home/ww/opencv/test/DM_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ww/opencv/test/DM_test /home/ww/opencv/test/DM_test /home/ww/opencv/test/DM_test /home/ww/opencv/test/DM_test /home/ww/opencv/test/DM_test/CMakeFiles/DM_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DM_test.dir/depend

