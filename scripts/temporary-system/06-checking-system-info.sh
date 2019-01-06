#/bin/bash
# for checking dynamic linker (provided by Glibc) used to build the system
# $1 is a name (path) of a binary
readelf -l $1 | grep interpreter
