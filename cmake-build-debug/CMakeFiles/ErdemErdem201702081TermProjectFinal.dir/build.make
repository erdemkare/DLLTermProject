# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/flags.make

CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.obj: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/flags.make
CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\main.cpp.obj -c C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\main.cpp

CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\main.cpp > CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\main.cpp.i

CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\main.cpp -o CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\main.cpp.s

# Object files for target ErdemErdem201702081TermProjectFinal
ErdemErdem201702081TermProjectFinal_OBJECTS = \
"CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.obj"

# External object files for target ErdemErdem201702081TermProjectFinal
ErdemErdem201702081TermProjectFinal_EXTERNAL_OBJECTS =

ErdemErdem201702081TermProjectFinal.exe: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/main.cpp.obj
ErdemErdem201702081TermProjectFinal.exe: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/build.make
ErdemErdem201702081TermProjectFinal.exe: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/linklibs.rsp
ErdemErdem201702081TermProjectFinal.exe: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/objects1.rsp
ErdemErdem201702081TermProjectFinal.exe: CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ErdemErdem201702081TermProjectFinal.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/build: ErdemErdem201702081TermProjectFinal.exe

.PHONY : CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/build

CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/clean

CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug C:\Users\erdem\CLionProjects\ErdemErdem20170702081TermProjectFinal\cmake-build-debug\CMakeFiles\ErdemErdem201702081TermProjectFinal.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ErdemErdem201702081TermProjectFinal.dir/depend

