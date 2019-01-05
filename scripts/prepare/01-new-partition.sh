#!/bin/bash
test -z "$1" && exit
PARTITION=$1

# mount partition for building
mkdir -pv $LFS
mount -v -t ext4 ${PARTITION} $LFS
# mount swap partition (optional)
# /sbin/swapon -v /dev/<swap>
