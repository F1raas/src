# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/setr/Documents/laboratoire3/labo3-h24/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/setr/Documents/laboratoire3/labo3-h24/src/build

# Include any dependencies generated for this target.
include CMakeFiles/redimensionneur.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/redimensionneur.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/redimensionneur.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/redimensionneur.dir/flags.make

CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o: CMakeFiles/redimensionneur.dir/flags.make
CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o: /home/setr/Documents/laboratoire3/labo3-h24/src/allocateurMemoire.c
CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o: CMakeFiles/redimensionneur.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -MD -MT CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o -MF CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o.d -o CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o -c /home/setr/Documents/laboratoire3/labo3-h24/src/allocateurMemoire.c

CMakeFiles/redimensionneur.dir/allocateurMemoire.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/redimensionneur.dir/allocateurMemoire.c.i"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -E /home/setr/Documents/laboratoire3/labo3-h24/src/allocateurMemoire.c > CMakeFiles/redimensionneur.dir/allocateurMemoire.c.i

CMakeFiles/redimensionneur.dir/allocateurMemoire.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/redimensionneur.dir/allocateurMemoire.c.s"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -S /home/setr/Documents/laboratoire3/labo3-h24/src/allocateurMemoire.c -o CMakeFiles/redimensionneur.dir/allocateurMemoire.c.s

CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o: CMakeFiles/redimensionneur.dir/flags.make
CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o: /home/setr/Documents/laboratoire3/labo3-h24/src/commMemoirePartagee.c
CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o: CMakeFiles/redimensionneur.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -MD -MT CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o -MF CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o.d -o CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o -c /home/setr/Documents/laboratoire3/labo3-h24/src/commMemoirePartagee.c

CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.i"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -E /home/setr/Documents/laboratoire3/labo3-h24/src/commMemoirePartagee.c > CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.i

CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.s"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -S /home/setr/Documents/laboratoire3/labo3-h24/src/commMemoirePartagee.c -o CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.s

CMakeFiles/redimensionneur.dir/utils.c.o: CMakeFiles/redimensionneur.dir/flags.make
CMakeFiles/redimensionneur.dir/utils.c.o: /home/setr/Documents/laboratoire3/labo3-h24/src/utils.c
CMakeFiles/redimensionneur.dir/utils.c.o: CMakeFiles/redimensionneur.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/redimensionneur.dir/utils.c.o"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -MD -MT CMakeFiles/redimensionneur.dir/utils.c.o -MF CMakeFiles/redimensionneur.dir/utils.c.o.d -o CMakeFiles/redimensionneur.dir/utils.c.o -c /home/setr/Documents/laboratoire3/labo3-h24/src/utils.c

CMakeFiles/redimensionneur.dir/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/redimensionneur.dir/utils.c.i"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -E /home/setr/Documents/laboratoire3/labo3-h24/src/utils.c > CMakeFiles/redimensionneur.dir/utils.c.i

CMakeFiles/redimensionneur.dir/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/redimensionneur.dir/utils.c.s"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -S /home/setr/Documents/laboratoire3/labo3-h24/src/utils.c -o CMakeFiles/redimensionneur.dir/utils.c.s

CMakeFiles/redimensionneur.dir/redimensionneur.c.o: CMakeFiles/redimensionneur.dir/flags.make
CMakeFiles/redimensionneur.dir/redimensionneur.c.o: /home/setr/Documents/laboratoire3/labo3-h24/src/redimensionneur.c
CMakeFiles/redimensionneur.dir/redimensionneur.c.o: CMakeFiles/redimensionneur.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/redimensionneur.dir/redimensionneur.c.o"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -MD -MT CMakeFiles/redimensionneur.dir/redimensionneur.c.o -MF CMakeFiles/redimensionneur.dir/redimensionneur.c.o.d -o CMakeFiles/redimensionneur.dir/redimensionneur.c.o -c /home/setr/Documents/laboratoire3/labo3-h24/src/redimensionneur.c

CMakeFiles/redimensionneur.dir/redimensionneur.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/redimensionneur.dir/redimensionneur.c.i"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -E /home/setr/Documents/laboratoire3/labo3-h24/src/redimensionneur.c > CMakeFiles/redimensionneur.dir/redimensionneur.c.i

CMakeFiles/redimensionneur.dir/redimensionneur.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/redimensionneur.dir/redimensionneur.c.s"
	/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/bin/arm-raspbian-linux-gnueabi-g++ --sysroot=/home/setr/arm-cross-comp-env/arm-raspbian-linux-gnueabi/arm-raspbian-linux-gnueabi/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) -x c++ $(CXX_FLAGS) -S /home/setr/Documents/laboratoire3/labo3-h24/src/redimensionneur.c -o CMakeFiles/redimensionneur.dir/redimensionneur.c.s

# Object files for target redimensionneur
redimensionneur_OBJECTS = \
"CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o" \
"CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o" \
"CMakeFiles/redimensionneur.dir/utils.c.o" \
"CMakeFiles/redimensionneur.dir/redimensionneur.c.o"

# External object files for target redimensionneur
redimensionneur_EXTERNAL_OBJECTS =

redimensionneur: CMakeFiles/redimensionneur.dir/allocateurMemoire.c.o
redimensionneur: CMakeFiles/redimensionneur.dir/commMemoirePartagee.c.o
redimensionneur: CMakeFiles/redimensionneur.dir/utils.c.o
redimensionneur: CMakeFiles/redimensionneur.dir/redimensionneur.c.o
redimensionneur: CMakeFiles/redimensionneur.dir/build.make
redimensionneur: CMakeFiles/redimensionneur.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable redimensionneur"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redimensionneur.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/redimensionneur.dir/build: redimensionneur
.PHONY : CMakeFiles/redimensionneur.dir/build

CMakeFiles/redimensionneur.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/redimensionneur.dir/cmake_clean.cmake
.PHONY : CMakeFiles/redimensionneur.dir/clean

CMakeFiles/redimensionneur.dir/depend:
	cd /home/setr/Documents/laboratoire3/labo3-h24/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/setr/Documents/laboratoire3/labo3-h24/src /home/setr/Documents/laboratoire3/labo3-h24/src /home/setr/Documents/laboratoire3/labo3-h24/src/build /home/setr/Documents/laboratoire3/labo3-h24/src/build /home/setr/Documents/laboratoire3/labo3-h24/src/build/CMakeFiles/redimensionneur.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/redimensionneur.dir/depend

