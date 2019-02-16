#!/bin/bash
path=${1?missing path name}
files=$(ls $path)
for filename in $files
do
echo $filename >>file.txt
done
sort -V file.txt >filename.txt
rm file.txt