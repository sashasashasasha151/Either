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
include tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/flags.make

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/flags.make
tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/includes_CXX.rsp
tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj: ../tests/googletest-master/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj"
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gtest.dir\src\gtest-all.cc.obj -c C:\Google\CodeProjects\C++\Either\tests\googletest-master\googletest\src\gtest-all.cc

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Google\CodeProjects\C++\Either\tests\googletest-master\googletest\src\gtest-all.cc > CMakeFiles\gtest.dir\src\gtest-all.cc.i

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Google\CodeProjects\C++\Either\tests\googletest-master\googletest\src\gtest-all.cc -o CMakeFiles\gtest.dir\src\gtest-all.cc.s

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires:

.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires
	$(MAKE) -f tests\googletest-master\googlemock\gtest\CMakeFiles\gtest.dir\build.make tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides.build
.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides.build: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj


# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.obj"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

tests/googletest-master/googlemock/gtest/libgtestd.a: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj
tests/googletest-master/googlemock/gtest/libgtestd.a: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/build.make
tests/googletest-master/googlemock/gtest/libgtestd.a: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Google\CodeProjects\C++\Either\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtestd.a"
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && $(CMAKE_COMMAND) -P CMakeFiles\gtest.dir\cmake_clean_target.cmake
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gtest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/build: tests/googletest-master/googlemock/gtest/libgtestd.a

.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/build

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/requires: tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires

.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/requires

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/clean:
	cd /d C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest && $(CMAKE_COMMAND) -P CMakeFiles\gtest.dir\cmake_clean.cmake
.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/clean

tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Google\CodeProjects\C++\Either C:\Google\CodeProjects\C++\Either\tests\googletest-master\googletest C:\Google\CodeProjects\C++\Either\cmake-build-debug C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest C:\Google\CodeProjects\C++\Either\cmake-build-debug\tests\googletest-master\googlemock\gtest\CMakeFiles\gtest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tests/googletest-master/googlemock/gtest/CMakeFiles/gtest.dir/depend

