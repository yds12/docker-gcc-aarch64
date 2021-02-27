A Dockerised installation of the aarch64 gcc cross compiler.

With this script, you can run a Docker container that will allow you to compile
C programs for the ARM 64-bit architecture (also known as `aarch64` or `arm64`).

# TL;DR

To install:

    $ apt install docker
    $ git clone https://github.com/yds12/docker-gcc-aarch64
    $ cd docker-gcc-aarch64
    $ ./build.sh
    $ ./install.sh

Press ENTER when prompted.

Add `~/.local/bin` to `PATH`.

To run:

    $ compile-aarch64 -o hello hello.c

Copy the `hello` executable to an `aarch64` (arm64) machine and run:

    $ ./hello
    Hello from aarch64!

# Install

To install this compiler container, you need [Docker](https://www.docker.com/)
and a Linux computer.

## Install Docker

If you are in Debian, Ubuntu, Linux Mint or other Debian based distro, run:

    $ apt install docker

## Build the Image

Run:

    $ ./build.sh

## Install the Compilation Script

This step is not strictly necessary, but it makes the use of the compiler
easier.

Run:

    $ ./install.sh

The installer will ask you the name of the command you want to compile. Just
press ENTER to accept the default name (`compile-aarch64`).

## Usage

From any directory, you can now cross-compile to `aarch64` with the command:

    $ <command-name> <args>

where `<command-name>` is the command name chosen in the installation
(`compile-aarch64` by default) and `<args>` are the arguments you want to pass
to `gcc`.

For example, to compile the example `hello.c` file that comes with this
repository, assuming the default command name, type:

    $ compile-aarch64 -o hello hello.c

You can check that an `aarch64` executable is generated in the working
directory with:

    $ file hello

If you skipped the install step above, you can compile by directly invoking
the `compile-gcc-aarch64.sh` script, passing the arguments for `gcc` as in
the previous example.

