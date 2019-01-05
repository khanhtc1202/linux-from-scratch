#!/bin/bash
# create new .bash_profile which be read after /etc/profile
# when login to lfs user by su -
cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF
# create new .bashrc
# `set +h` switch off bash's hash function so that bash will always
# search PATH (with /tools/bin - latest builded bin) each time when it
# call a program.
cat > ~/.bashrc << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/tools/bin:/bin:/usr/bin
export LFS LC_ALL LFS_TGT PATH
EOF
# activate profile file
source ~/.bash_profile
