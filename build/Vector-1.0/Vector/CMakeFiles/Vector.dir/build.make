# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/romain/Dropbox/Perso/Mandelbrot_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/romain/Dropbox/Perso/Mandelbrot_test/build

# Include any dependencies generated for this target.
include Vector-1.0/Vector/CMakeFiles/Vector.dir/depend.make

# Include the progress variables for this target.
include Vector-1.0/Vector/CMakeFiles/Vector.dir/progress.make

# Include the compile flags for this target's objects.
include Vector-1.0/Vector/CMakeFiles/Vector.dir/flags.make

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o: Vector-1.0/Vector/CMakeFiles/Vector.dir/flags.make
Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o: ../Vector-1.0/Vector/src/instrset_detect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/romain/Dropbox/Perso/Mandelbrot_test/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o"
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && /opt/intel/composer_xe_2013.2.146/bin/intel64/icpc   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Vector.dir/src/instrset_detect.cpp.o -c /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/src/instrset_detect.cpp

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Vector.dir/src/instrset_detect.cpp.i"
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && /opt/intel/composer_xe_2013.2.146/bin/intel64/icpc  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/src/instrset_detect.cpp > CMakeFiles/Vector.dir/src/instrset_detect.cpp.i

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Vector.dir/src/instrset_detect.cpp.s"
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && /opt/intel/composer_xe_2013.2.146/bin/intel64/icpc  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector/src/instrset_detect.cpp -o CMakeFiles/Vector.dir/src/instrset_detect.cpp.s

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.requires:
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.requires

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.provides: Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.requires
	$(MAKE) -f Vector-1.0/Vector/CMakeFiles/Vector.dir/build.make Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.provides.build
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.provides

Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.provides.build: Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o

# Object files for target Vector
Vector_OBJECTS = \
"CMakeFiles/Vector.dir/src/instrset_detect.cpp.o"

# External object files for target Vector
Vector_EXTERNAL_OBJECTS =

Vector-1.0/Vector/libVector.a: Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o
Vector-1.0/Vector/libVector.a: Vector-1.0/Vector/CMakeFiles/Vector.dir/build.make
Vector-1.0/Vector/libVector.a: Vector-1.0/Vector/CMakeFiles/Vector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libVector.a"
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && $(CMAKE_COMMAND) -P CMakeFiles/Vector.dir/cmake_clean_target.cmake
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Vector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Vector-1.0/Vector/CMakeFiles/Vector.dir/build: Vector-1.0/Vector/libVector.a
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/build

Vector-1.0/Vector/CMakeFiles/Vector.dir/requires: Vector-1.0/Vector/CMakeFiles/Vector.dir/src/instrset_detect.cpp.o.requires
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/requires

Vector-1.0/Vector/CMakeFiles/Vector.dir/clean:
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector && $(CMAKE_COMMAND) -P CMakeFiles/Vector.dir/cmake_clean.cmake
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/clean

Vector-1.0/Vector/CMakeFiles/Vector.dir/depend:
	cd /home/romain/Dropbox/Perso/Mandelbrot_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/romain/Dropbox/Perso/Mandelbrot_test /home/romain/Dropbox/Perso/Mandelbrot_test/Vector-1.0/Vector /home/romain/Dropbox/Perso/Mandelbrot_test/build /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector /home/romain/Dropbox/Perso/Mandelbrot_test/build/Vector-1.0/Vector/CMakeFiles/Vector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Vector-1.0/Vector/CMakeFiles/Vector.dir/depend

