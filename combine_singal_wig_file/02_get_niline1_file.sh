#!/bin/bash

dio=bind_wig
mkdir $dio
files=${1?missing files name}
exec 0< $files
while read id
do
  zgrep -v ^track treat/${id} | gzip> bind_wig/no_line1_${id}
done
