# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/zqy2023/dLSM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zqy2023/dLSM/build

# Include any dependencies generated for this target.
include CMakeFiles/Mem_leak_checker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mem_leak_checker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mem_leak_checker.dir/flags.make

CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o: CMakeFiles/Mem_leak_checker.dir/flags.make
CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o: ../memory_leak.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqy2023/dLSM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o -c /home/zqy2023/dLSM/memory_leak.cpp

CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqy2023/dLSM/memory_leak.cpp > CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.i

CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqy2023/dLSM/memory_leak.cpp -o CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.s

# Object files for target Mem_leak_checker
Mem_leak_checker_OBJECTS = \
"CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o"

# External object files for target Mem_leak_checker
Mem_leak_checker_EXTERNAL_OBJECTS =

Mem_leak_checker: CMakeFiles/Mem_leak_checker.dir/memory_leak.cpp.o
Mem_leak_checker: CMakeFiles/Mem_leak_checker.dir/build.make
Mem_leak_checker: libdLSM.a
Mem_leak_checker: /usr/lib/x86_64-linux-gnu/libibverbs.so
Mem_leak_checker: CMakeFiles/Mem_leak_checker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zqy2023/dLSM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Mem_leak_checker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mem_leak_checker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mem_leak_checker.dir/build: Mem_leak_checker

.PHONY : CMakeFiles/Mem_leak_checker.dir/build

CMakeFiles/Mem_leak_checker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mem_leak_checker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mem_leak_checker.dir/clean

CMakeFiles/Mem_leak_checker.dir/depend:
	cd /home/zqy2023/dLSM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zqy2023/dLSM /home/zqy2023/dLSM /home/zqy2023/dLSM/build /home/zqy2023/dLSM/build /home/zqy2023/dLSM/build/CMakeFiles/Mem_leak_checker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mem_leak_checker.dir/depend
