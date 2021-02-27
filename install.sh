#!/bin/sh

# Install the compiler in ~/.local/bin

# Default name for the executable
DEFAULTEXE="compile-aarch64"

# Prompt user for the executable name
echo "What name do you want for the aarch64-gcc-compiler executable? [$DEFAULTEXE] "
read EXENAME

# If entered value is empty, uses the default
[ -z "$EXENAME" ] && EXENAME=$DEFAULTEXE

# Create ~/.local/bin if it doesn't exist yet
[ ! -d ~/.local/bin ] && mkdir -p ~/.local/bin 

# Copy the compile script there
cp compile-gcc-aarch64.sh ~/.local/bin

# Create a link with the desirable executable name
ln -s ~/.local/bin/compile-gcc-aarch64.sh ~/.local/bin/"$EXENAME"

# Ask user to add ~/.local/bin to the PATH.
echo "Please make sure that $HOME/.local/bin is in the PATH environment variable."

