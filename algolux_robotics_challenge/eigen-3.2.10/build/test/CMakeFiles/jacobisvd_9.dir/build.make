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
CMAKE_SOURCE_DIR = /home/algo/Downloads/eigen-3.2.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/algo/Downloads/eigen-3.2.10/build

# Include any dependencies generated for this target.
include test/CMakeFiles/jacobisvd_9.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/jacobisvd_9.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/jacobisvd_9.dir/flags.make

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o: test/CMakeFiles/jacobisvd_9.dir/flags.make
test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o: ../test/jacobisvd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o"
	cd /home/algo/Downloads/eigen-3.2.10/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o -c /home/algo/Downloads/eigen-3.2.10/test/jacobisvd.cpp

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.i"
	cd /home/algo/Downloads/eigen-3.2.10/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/algo/Downloads/eigen-3.2.10/test/jacobisvd.cpp > CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.i

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.s"
	cd /home/algo/Downloads/eigen-3.2.10/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/algo/Downloads/eigen-3.2.10/test/jacobisvd.cpp -o CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.s

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.requires:

.PHONY : test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.requires

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.provides: test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/jacobisvd_9.dir/build.make test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.provides.build
.PHONY : test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.provides

test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.provides.build: test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o


# Object files for target jacobisvd_9
jacobisvd_9_OBJECTS = \
"CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o"

# External object files for target jacobisvd_9
jacobisvd_9_EXTERNAL_OBJECTS =

test/jacobisvd_9: test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o
test/jacobisvd_9: test/CMakeFiles/jacobisvd_9.dir/build.make
test/jacobisvd_9: test/CMakeFiles/jacobisvd_9.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable jacobisvd_9"
	cd /home/algo/Downloads/eigen-3.2.10/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jacobisvd_9.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/jacobisvd_9.dir/build: test/jacobisvd_9

.PHONY : test/CMakeFiles/jacobisvd_9.dir/build

test/CMakeFiles/jacobisvd_9.dir/requires: test/CMakeFiles/jacobisvd_9.dir/jacobisvd.cpp.o.requires

.PHONY : test/CMakeFiles/jacobisvd_9.dir/requires

test/CMakeFiles/jacobisvd_9.dir/clean:
	cd /home/algo/Downloads/eigen-3.2.10/build/test && $(CMAKE_COMMAND) -P CMakeFiles/jacobisvd_9.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/jacobisvd_9.dir/clean

test/CMakeFiles/jacobisvd_9.dir/depend:
	cd /home/algo/Downloads/eigen-3.2.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/algo/Downloads/eigen-3.2.10 /home/algo/Downloads/eigen-3.2.10/test /home/algo/Downloads/eigen-3.2.10/build /home/algo/Downloads/eigen-3.2.10/build/test /home/algo/Downloads/eigen-3.2.10/build/test/CMakeFiles/jacobisvd_9.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/jacobisvd_9.dir/depend

