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
include doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/flags.make

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/flags.make
doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o: doc/snippets/compile_MatrixBase_adjoint.cpp
doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o: ../doc/snippets/MatrixBase_adjoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o -c /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_MatrixBase_adjoint.cpp

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.i"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_MatrixBase_adjoint.cpp > CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.i

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.s"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/compile_MatrixBase_adjoint.cpp -o CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.s

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.requires:

.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.requires

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.provides: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.requires
	$(MAKE) -f doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/build.make doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.provides.build
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.provides

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.provides.build: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o


# Object files for target compile_MatrixBase_adjoint
compile_MatrixBase_adjoint_OBJECTS = \
"CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o"

# External object files for target compile_MatrixBase_adjoint
compile_MatrixBase_adjoint_EXTERNAL_OBJECTS =

doc/snippets/compile_MatrixBase_adjoint: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o
doc/snippets/compile_MatrixBase_adjoint: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/build.make
doc/snippets/compile_MatrixBase_adjoint: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/algo/Downloads/eigen-3.2.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_MatrixBase_adjoint"
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_MatrixBase_adjoint.dir/link.txt --verbose=$(VERBOSE)
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && ./compile_MatrixBase_adjoint >/home/algo/Downloads/eigen-3.2.10/build/doc/snippets/MatrixBase_adjoint.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/build: doc/snippets/compile_MatrixBase_adjoint

.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/build

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/requires: doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/compile_MatrixBase_adjoint.cpp.o.requires

.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/requires

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/clean:
	cd /home/algo/Downloads/eigen-3.2.10/build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_MatrixBase_adjoint.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/clean

doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/depend:
	cd /home/algo/Downloads/eigen-3.2.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/algo/Downloads/eigen-3.2.10 /home/algo/Downloads/eigen-3.2.10/doc/snippets /home/algo/Downloads/eigen-3.2.10/build /home/algo/Downloads/eigen-3.2.10/build/doc/snippets /home/algo/Downloads/eigen-3.2.10/build/doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_adjoint.dir/depend

