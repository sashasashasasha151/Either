# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = C:\Users\sasha\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\173.4127.6\bin\cmake\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\sasha\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\173.4127.6\bin\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Google\CodeProjects\C++\Either

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Google\CodeProjects\C++\Either\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Either.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Either.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Either.dir/flags.make

CMakeFiles/Either.dir/source/main.cpp.obj: CMakeFiles/Either.dir/flags.make
CMakeFiles/Either.dir/source/main.cpp.obj: CMakeFiles/Either.dir/includes_CXX.rsp
CMakeFiles/Either.dir/source/main.cpp.obj: ../source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Either.dir/source/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Either.dir\source\main.cpp.obj -c C:\Google\CodeProjects\C++\Either\source\main.cpp

CMakeFiles/Either.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Either.dir/source/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Google\CodeProjects\C++\Either\source\main.cpp > CMakeFiles\Either.dir\source\main.cpp.i

CMakeFiles/Either.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Either.dir/source/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Google\CodeProjects\C++\Either\source\main.cpp -o CMakeFiles\Either.dir\source\main.cpp.s

CMakeFiles/Either.dir/source/main.cpp.obj.requires:

.PHONY : CMakeFiles/Either.dir/source/main.cpp.obj.requires

CMakeFiles/Either.dir/source/main.cpp.obj.provides: CMakeFiles/Either.dir/source/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Either.dir\build.make CMakeFiles/Either.dir/source/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Either.dir/source/main.cpp.obj.provides

CMakeFiles/Either.dir/source/main.cpp.obj.provides.build: CMakeFiles/Either.dir/source/main.cpp.obj


CMakeFiles/Either.dir/tests/either_tests.cpp.obj: CMakeFiles/Either.dir/flags.make
CMakeFiles/Either.dir/tests/either_tests.cpp.obj: CMakeFiles/Either.dir/includes_CXX.rsp
CMakeFiles/Either.dir/tests/either_tests.cpp.obj: ../tests/either_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Either.dir/tests/either_tests.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Either.dir\tests\either_tests.cpp.obj -c C:\Google\CodeProjects\C++\Either\tests\either_tests.cpp

CMakeFiles/Either.dir/tests/either_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Either.dir/tests/either_tests.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Google\CodeProjects\C++\Either\tests\either_tests.cpp > CMakeFiles\Either.dir\tests\either_tests.cpp.i

CMakeFiles/Either.dir/tests/either_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Either.dir/tests/either_tests.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Google\CodeProjects\C++\Either\tests\either_tests.cpp -o CMakeFiles\Either.dir\tests\either_tests.cpp.s

CMakeFiles/Either.dir/tests/either_tests.cpp.obj.requires:

.PHONY : CMakeFiles/Either.dir/tests/either_tests.cpp.obj.requires

CMakeFiles/Either.dir/tests/either_tests.cpp.obj.provides: CMakeFiles/Either.dir/tests/either_tests.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Either.dir\build.make CMakeFiles/Either.dir/tests/either_tests.cpp.obj.provides.build
.PHONY : CMakeFiles/Either.dir/tests/either_tests.cpp.obj.provides

CMakeFiles/Either.dir/tests/either_tests.cpp.obj.provides.build: CMakeFiles/Either.dir/tests/either_tests.cpp.obj


# Object files for target Either
Either_OBJECTS = \
"CMakeFiles/Either.dir/source/main.cpp.obj" \
"CMakeFiles/Either.dir/tests/either_tests.cpp.obj"

# External object files for target Either
Either_EXTERNAL_OBJECTS =

Either.exe: CMakeFiles/Either.dir/source/main.cpp.obj
Either.exe: CMakeFiles/Either.dir/tests/either_tests.cpp.obj
Either.exe: CMakeFiles/Either.dir/build.make
Either.exe: tests/googletest-master/googlemock/gtest/libgtestd.a
Either.exe: tests/googletest-master/googlemock/gtest/libgtest_maind.a
Either.exe: tests/googletest-master/googlemock/gtest/libgtestd.a
Either.exe: CMakeFiles/Either.dir/linklibs.rsp
Either.exe: CMakeFiles/Either.dir/objects1.rsp
Either.exe: CMakeFiles/Either.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Either.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Either.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Either.dir/build: Either.exe

.PHONY : CMakeFiles/Either.dir/build

CMakeFiles/Either.dir/requires: CMakeFiles/Either.dir/source/main.cpp.obj.requires
CMakeFiles/Either.dir/requires: CMakeFiles/Either.dir/tests/either_tests.cpp.obj.requires

.PHONY : CMakeFiles/Either.dir/requires

CMakeFiles/Either.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Either.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Either.dir/clean

CMakeFiles/Either.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Google\CodeProjects\C++\Either C:\Google\CodeProjects\C++\Either C:\Google\CodeProjects\C++\Either\cmake-build-debug C:\Google\CodeProjects\C++\Either\cmake-build-debug C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles\Either.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Either.dir/depend
