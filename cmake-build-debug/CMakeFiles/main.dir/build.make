# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/DelaySum.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/DelaySum.c.obj: ../DelaySum.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/main.dir/DelaySum.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\DelaySum.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\DelaySum.c

CMakeFiles/main.dir/DelaySum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/DelaySum.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\DelaySum.c > CMakeFiles\main.dir\DelaySum.c.i

CMakeFiles/main.dir/DelaySum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/DelaySum.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\DelaySum.c -o CMakeFiles\main.dir\DelaySum.c.s

CMakeFiles/main.dir/enframe.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/enframe.c.obj: ../enframe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/main.dir/enframe.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\enframe.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\enframe.c

CMakeFiles/main.dir/enframe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/enframe.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\enframe.c > CMakeFiles\main.dir\enframe.c.i

CMakeFiles/main.dir/enframe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/enframe.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\enframe.c -o CMakeFiles\main.dir\enframe.c.s

CMakeFiles/main.dir/hamming.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/hamming.c.obj: ../hamming.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/main.dir/hamming.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\hamming.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\hamming.c

CMakeFiles/main.dir/hamming.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/hamming.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\hamming.c > CMakeFiles\main.dir\hamming.c.i

CMakeFiles/main.dir/hamming.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/hamming.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\hamming.c -o CMakeFiles\main.dir\hamming.c.s

CMakeFiles/main.dir/kiss_fft.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/kiss_fft.c.obj: ../kiss_fft.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/main.dir/kiss_fft.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\kiss_fft.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fft.c

CMakeFiles/main.dir/kiss_fft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/kiss_fft.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fft.c > CMakeFiles\main.dir\kiss_fft.c.i

CMakeFiles/main.dir/kiss_fft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/kiss_fft.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fft.c -o CMakeFiles\main.dir\kiss_fft.c.s

CMakeFiles/main.dir/kiss_fftr.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/kiss_fftr.c.obj: ../kiss_fftr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/main.dir/kiss_fftr.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\kiss_fftr.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fftr.c

CMakeFiles/main.dir/kiss_fftr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/kiss_fftr.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fftr.c > CMakeFiles\main.dir\kiss_fftr.c.i

CMakeFiles/main.dir/kiss_fftr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/kiss_fftr.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\kiss_fftr.c -o CMakeFiles\main.dir\kiss_fftr.c.s

CMakeFiles/main.dir/main.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/main.dir/main.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\main.dir\main.c.obj   -c C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\main.c

CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\main.c > CMakeFiles\main.dir\main.c.i

CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\main.c -o CMakeFiles\main.dir\main.c.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/DelaySum.c.obj" \
"CMakeFiles/main.dir/enframe.c.obj" \
"CMakeFiles/main.dir/hamming.c.obj" \
"CMakeFiles/main.dir/kiss_fft.c.obj" \
"CMakeFiles/main.dir/kiss_fftr.c.obj" \
"CMakeFiles/main.dir/main.c.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

main.exe: CMakeFiles/main.dir/DelaySum.c.obj
main.exe: CMakeFiles/main.dir/enframe.c.obj
main.exe: CMakeFiles/main.dir/hamming.c.obj
main.exe: CMakeFiles/main.dir/kiss_fft.c.obj
main.exe: CMakeFiles/main.dir/kiss_fftr.c.obj
main.exe: CMakeFiles/main.dir/main.c.obj
main.exe: CMakeFiles/main.dir/build.make
main.exe: CMakeFiles/main.dir/linklibs.rsp
main.exe: CMakeFiles/main.dir/objects1.rsp
main.exe: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main.exe

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main.dir\cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug C:\Users\IRON\Desktop\tdoa_c\GCC-PHAT\cmake-build-debug\CMakeFiles\main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

