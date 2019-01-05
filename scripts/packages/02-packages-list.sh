#!/bin/bash
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

# download list packages & patches by using wget-list
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources
