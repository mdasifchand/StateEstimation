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
include doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/flags.make

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/flags.make
doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o: doc/snippets/compile_Tutorial_commainit_01b.cpp
doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o: ../doc/snippets/Tutorial_commainit_01b.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o -c /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_Tutorial_commainit_01b.cpp

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.i"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_Tutorial_commainit_01b.cpp > CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.i

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.s"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_Tutorial_commainit_01b.cpp -o CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.s

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.requires:

.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.requires

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.provides: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.requires
	$(MAKE) -f doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/build.make doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.provides.build
.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.provides

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.provides.build: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o


# Object files for target compile_Tutorial_commainit_01b
compile_Tutorial_commainit_01b_OBJECTS = \
"CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o"

# External object files for target compile_Tutorial_commainit_01b
compile_Tutorial_commainit_01b_EXTERNAL_OBJECTS =

doc/snippets/compile_Tutorial_commainit_01b: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o
doc/snippets/compile_Tutorial_commainit_01b: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/build.make
doc/snippets/compile_Tutorial_commainit_01b: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_Tutorial_commainit_01b"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_Tutorial_commainit_01b.dir/link.txt --verbose=$(VERBOSE)
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && ./compile_Tutorial_commainit_01b >/home/algo/Downloads/eigen-3.2.10/build/doc/snippets/Tutorial_commainit_01b.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/build: doc/snippets/compile_Tutorial_commainit_01b

.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/build

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/requires: doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/compile_Tutorial_commainit_01b.cpp.o.requires

.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/requires

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/clean:
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_Tutorial_commainit_01b.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/clean

doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/depend:
	cd /home/algo/Downloads/eigen-3.2.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/algo/Downloads/eigen-3.2.10 /home/algo/Downloads/eigen-3.2.10/doc/snippets /home/algo/Downloads/eigen-3.2.10/build /home/algo/Downloads/eigen-3.2.10/build/doc/snippets /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_Tutorial_commainit_01b.dir/depend

