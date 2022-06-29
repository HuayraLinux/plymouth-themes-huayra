#!/bin/bash
for file in ./svg/*.svg
do
    filename=$(basename -s .svg "$file")
    inkscape -z -f "$file"  -w 32 -h 32 -e "${filename}.png"
done