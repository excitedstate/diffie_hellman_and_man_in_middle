# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/bing/文档/projects/vscode/diffie_hellman

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bing/文档/projects/vscode/diffie_hellman

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles /home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/bing/文档/projects/vscode/diffie_hellman/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named man_in_middle_plugin

# Build rule for target.
man_in_middle_plugin: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 man_in_middle_plugin
.PHONY : man_in_middle_plugin

# fast build rule for target.
man_in_middle_plugin/fast:
	$(MAKE) -f CMakeFiles/man_in_middle_plugin.dir/build.make CMakeFiles/man_in_middle_plugin.dir/build
.PHONY : man_in_middle_plugin/fast

#=============================================================================
# Target rules for targets named client_safe

# Build rule for target.
client_safe: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client_safe
.PHONY : client_safe

# fast build rule for target.
client_safe/fast:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/build
.PHONY : client_safe/fast

#=============================================================================
# Target rules for targets named server_safe

# Build rule for target.
server_safe: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server_safe
.PHONY : server_safe

# fast build rule for target.
server_safe/fast:
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/build
.PHONY : server_safe/fast

#=============================================================================
# Target rules for targets named man_in_middle

# Build rule for target.
man_in_middle: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 man_in_middle
.PHONY : man_in_middle

# fast build rule for target.
man_in_middle/fast:
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/build
.PHONY : man_in_middle/fast

#=============================================================================
# Target rules for targets named arp_spoof

# Build rule for target.
arp_spoof: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 arp_spoof
.PHONY : arp_spoof

# fast build rule for target.
arp_spoof/fast:
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/build
.PHONY : arp_spoof/fast

#=============================================================================
# Target rules for targets named client

# Build rule for target.
client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client
.PHONY : client

# fast build rule for target.
client/fast:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/build
.PHONY : client/fast

#=============================================================================
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

main.o: main.c.o

.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/main.c.o
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/main.c.o
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/main.c.o
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/main.c.o
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/main.c.o
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i

.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/main.c.i
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/main.c.i
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/main.c.i
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/main.c.i
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/main.c.i
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s

.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/main.c.s
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/main.c.s
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/main.c.s
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/main.c.s
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/main.c.s
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.s
.PHONY : main.c.s

src/arpspoof.o: src/arpspoof.c.o

.PHONY : src/arpspoof.o

# target to build an object file
src/arpspoof.c.o:
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/src/arpspoof.c.o
.PHONY : src/arpspoof.c.o

src/arpspoof.i: src/arpspoof.c.i

.PHONY : src/arpspoof.i

# target to preprocess a source file
src/arpspoof.c.i:
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/src/arpspoof.c.i
.PHONY : src/arpspoof.c.i

src/arpspoof.s: src/arpspoof.c.s

.PHONY : src/arpspoof.s

# target to generate assembly for a file
src/arpspoof.c.s:
	$(MAKE) -f CMakeFiles/arp_spoof.dir/build.make CMakeFiles/arp_spoof.dir/src/arpspoof.c.s
.PHONY : src/arpspoof.c.s

src/default_plugin.o: src/default_plugin.c.o

.PHONY : src/default_plugin.o

# target to build an object file
src/default_plugin.c.o:
	$(MAKE) -f CMakeFiles/man_in_middle_plugin.dir/build.make CMakeFiles/man_in_middle_plugin.dir/src/default_plugin.c.o
.PHONY : src/default_plugin.c.o

src/default_plugin.i: src/default_plugin.c.i

.PHONY : src/default_plugin.i

# target to preprocess a source file
src/default_plugin.c.i:
	$(MAKE) -f CMakeFiles/man_in_middle_plugin.dir/build.make CMakeFiles/man_in_middle_plugin.dir/src/default_plugin.c.i
.PHONY : src/default_plugin.c.i

src/default_plugin.s: src/default_plugin.c.s

.PHONY : src/default_plugin.s

# target to generate assembly for a file
src/default_plugin.c.s:
	$(MAKE) -f CMakeFiles/man_in_middle_plugin.dir/build.make CMakeFiles/man_in_middle_plugin.dir/src/default_plugin.c.s
.PHONY : src/default_plugin.c.s

src/dh_comm.o: src/dh_comm.c.o

.PHONY : src/dh_comm.o

# target to build an object file
src/dh_comm.c.o:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_comm.c.o
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_comm.c.o
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_comm.c.o
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_comm.c.o
.PHONY : src/dh_comm.c.o

src/dh_comm.i: src/dh_comm.c.i

.PHONY : src/dh_comm.i

# target to preprocess a source file
src/dh_comm.c.i:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_comm.c.i
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_comm.c.i
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_comm.c.i
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_comm.c.i
.PHONY : src/dh_comm.c.i

src/dh_comm.s: src/dh_comm.c.s

.PHONY : src/dh_comm.s

# target to generate assembly for a file
src/dh_comm.c.s:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_comm.c.s
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_comm.c.s
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_comm.c.s
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_comm.c.s
.PHONY : src/dh_comm.c.s

src/dh_protocol.o: src/dh_protocol.c.o

.PHONY : src/dh_protocol.o

# target to build an object file
src/dh_protocol.c.o:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_protocol.c.o
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_protocol.c.o
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/dh_protocol.c.o
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_protocol.c.o
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_protocol.c.o
.PHONY : src/dh_protocol.c.o

src/dh_protocol.i: src/dh_protocol.c.i

.PHONY : src/dh_protocol.i

# target to preprocess a source file
src/dh_protocol.c.i:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_protocol.c.i
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_protocol.c.i
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/dh_protocol.c.i
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_protocol.c.i
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_protocol.c.i
.PHONY : src/dh_protocol.c.i

src/dh_protocol.s: src/dh_protocol.c.s

.PHONY : src/dh_protocol.s

# target to generate assembly for a file
src/dh_protocol.c.s:
	$(MAKE) -f CMakeFiles/client_safe.dir/build.make CMakeFiles/client_safe.dir/src/dh_protocol.c.s
	$(MAKE) -f CMakeFiles/server_safe.dir/build.make CMakeFiles/server_safe.dir/src/dh_protocol.c.s
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/dh_protocol.c.s
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/dh_protocol.c.s
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/dh_protocol.c.s
.PHONY : src/dh_protocol.c.s

src/man_in_middle.o: src/man_in_middle.c.o

.PHONY : src/man_in_middle.o

# target to build an object file
src/man_in_middle.c.o:
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/man_in_middle.c.o
.PHONY : src/man_in_middle.c.o

src/man_in_middle.i: src/man_in_middle.c.i

.PHONY : src/man_in_middle.i

# target to preprocess a source file
src/man_in_middle.c.i:
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/man_in_middle.c.i
.PHONY : src/man_in_middle.c.i

src/man_in_middle.s: src/man_in_middle.c.s

.PHONY : src/man_in_middle.s

# target to generate assembly for a file
src/man_in_middle.c.s:
	$(MAKE) -f CMakeFiles/man_in_middle.dir/build.make CMakeFiles/man_in_middle.dir/src/man_in_middle.c.s
.PHONY : src/man_in_middle.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... edit_cache"
	@echo "... man_in_middle_plugin"
	@echo "... client_safe"
	@echo "... server_safe"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... man_in_middle"
	@echo "... arp_spoof"
	@echo "... client"
	@echo "... install/local"
	@echo "... server"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... src/arpspoof.o"
	@echo "... src/arpspoof.i"
	@echo "... src/arpspoof.s"
	@echo "... src/default_plugin.o"
	@echo "... src/default_plugin.i"
	@echo "... src/default_plugin.s"
	@echo "... src/dh_comm.o"
	@echo "... src/dh_comm.i"
	@echo "... src/dh_comm.s"
	@echo "... src/dh_protocol.o"
	@echo "... src/dh_protocol.i"
	@echo "... src/dh_protocol.s"
	@echo "... src/man_in_middle.o"
	@echo "... src/man_in_middle.i"
	@echo "... src/man_in_middle.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

