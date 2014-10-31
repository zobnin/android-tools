#!/bin/sh

rm -rf unpacked
mkdir unpacked
dd if=$1 of=unpacked/${1}.gz skip=8 bs=1 count=100000000000
cd unpacked
gunzip ${1}.gz
cpio -i < $1
rm $1
