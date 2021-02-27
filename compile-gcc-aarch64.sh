#!/bin/sh

# Compiles with aarch64 gcc, passing all arguments
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp docker-gcc-aarch64 \
  /usr/bin/aarch64-linux-gnu-gcc $@

