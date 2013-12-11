#!/bin/sh
curl http://www.androidruntime.com/list |\
    sed 's/<\/tr>/\n/g' |\
    grep 'Not Working' |\
    cut -d '>' -f 3 |\
    cut -d '<' -f 1
