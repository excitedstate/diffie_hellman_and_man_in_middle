# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/bing/文档/softwares/clion-2021.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/bing/文档/softwares/clion-2021.1.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bing/文档/projects/vscode/diffie_hellman

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bing/文档/projects/vscode/diffie_hellman

# Include any dependencies generated for this target.
include CMakeFiles/man_in_middle_plugins.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/man_in_middle_plugins.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/man_in_middle_plugins.dir/flags.make

CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o: CMakeFiles/man_in_middle_plugins.dir/flags.make
CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o: src/default_plugin.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o -c /home/bing/文档/projects/vscode/diffie_hellman/src/default_plugin.c

CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bing/文档/projects/vscode/diffie_hellman/src/default_plugin.c > CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.i

CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bing/文档/projects/vscode/diffie_hellman/src/default_plugin.c -o CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.s

# Object files for target man_in_middle_plugins
man_in_middle_plugins_OBJECTS = \
"CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o"

# External object files for target man_in_middle_plugins
man_in_middle_plugins_EXTERNAL_OBJECTS =

libman_in_middle_plugins.so: CMakeFiles/man_in_middle_plugins.dir/src/default_plugin.c.o
libman_in_middle_plugins.so: CMakeFiles/man_in_middle_plugins.dir/build.make
libman_in_middle_plugins.so: CMakeFiles/man_in_middle_plugins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libman_in_middle_plugins.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/man_in_middle_plugins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/man_in_middle_plugins.dir/build: libman_in_middle_plugins.so

.PHONY : CMakeFiles/man_in_middle_plugins.dir/build

CMakeFiles/man_in_middle_plugins.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/man_in_middle_plugins.dir/cmake_clean.cmake
.PHONY : CMakeFiles/man_in_middle_plugins.dir/clean

CMakeFiles/man_in_middle_plugins.dir/depend:
	cd /home/bing/文档/projects/vscode/diffie_hellman && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bing/文档/projects/vscode/diffie_hellman /home/bing/文档/projects/vscode/diffie_hellman /home/bing/文档/projects/vscode/diffie_hellman /home/bing/文档/projects/vscode/diffie_hellman /home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles/man_in_middle_plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/man_in_middle_plugins.dir/depend

