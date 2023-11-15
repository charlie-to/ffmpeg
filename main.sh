#!/bin/dash
cd /srv/data
for file_name in `ls`
do
    ffmpeg -i $file_name ../out/$file_name.srt
done
