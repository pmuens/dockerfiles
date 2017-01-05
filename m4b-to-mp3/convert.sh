#!/usr/bin/env bash

# stolen from https://gist.github.com/romanlv/2267094

mkdir -p mp3s

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `find . -type f -iname "*.m4[ab]" -print`; do
echo $i
NAME=`echo $i | sed  -e 's/\.\///' -e  's/\.m4b//g' `
echo "doing '$NAME'"
faad --stdio $i | lame --preset standard - "mp3s/${NAME}.mp3"
done

IFS=$SAVEIFS
