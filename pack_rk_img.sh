#!/bin/sh

cd unpacked
find . | xargs -I file touch -d "1970-01-01 01:00" file
find . | cpio -o -H newc | gzip -n >../${1}.gz
rkcrc -k ${1}.gz $1
rm ${1}.gz

