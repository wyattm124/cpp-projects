# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/wyatt/Desktop/JetBrains/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/wyatt/Desktop/JetBrains/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wyatt/Desktop/CPPProjects/2DArrs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/2DArrs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2DArrs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2DArrs.dir/flags.make

CMakeFiles/2DArrs.dir/main.cpp.o: CMakeFiles/2DArrs.dir/flags.make
CMakeFiles/2DArrs.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2DArrs.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/2DArrs.dir/main.cpp.o -c /home/wyatt/Desktop/CPPProjects/2DArrs/main.cpp

CMakeFiles/2DArrs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2DArrs.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wyatt/Desktop/CPPProjects/2DArrs/main.cpp > CMakeFiles/2DArrs.dir/main.cpp.i

CMakeFiles/2DArrs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2DArrs.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wyatt/Desktop/CPPProjects/2DArrs/main.cpp -o CMakeFiles/2DArrs.dir/main.cpp.s

# Object files for target 2DArrs
2DArrs_OBJECTS = \
"CMakeFiles/2DArrs.dir/main.cpp.o"

# External object files for target 2DArrs
2DArrs_EXTERNAL_OBJECTS =

2DArrs: CMakeFiles/2DArrs.dir/main.cpp.o
2DArrs: CMakeFiles/2DArrs.dir/build.make
2DArrs: CMakeFiles/2DArrs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2DArrs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2DArrs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2DArrs.dir/build: 2DArrs

.PHONY : CMakeFiles/2DArrs.dir/build

CMakeFiles/2DArrs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2DArrs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2DArrs.dir/clean

CMakeFiles/2DArrs.dir/depend:
	cd /home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wyatt/Desktop/CPPProjects/2DArrs /home/wyatt/Desktop/CPPProjects/2DArrs /home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug /home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug /home/wyatt/Desktop/CPPProjects/2DArrs/cmake-build-debug/CMakeFiles/2DArrs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2DArrs.dir/depend
