#/bin/bash
# The Binutils package contains a linker, an assembler
# and other tools for handling object files.
# extract binutils source
tar xvjf ./binutils-2.29.tar.bz2
cd binutils-2.29/
# recomend build binutils in a dedicated build directory
mkdir -v build
cd build
# configure
# change the target flag for new target system type
../configure --prefix=/tools \
             --with-sysroot=$LFS \
             --with-lib-path=/tools/lib \
             --target=$LFS_TGT \
             --disable-nls \
             --disable-werror
# compile the package
make
# create lib dir in tool chain dir (create lib64 in case host is x86_64)
case $(uname -m) in
    x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac
# install the package
make install
