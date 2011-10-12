#!/bin/sh

rm *.m4a

for i in *.flac ;
do
    echo $i
    ffmpeg -i "$i" -y -acodec libfaac a.m4a -map_meta_data a.m4a:"$i" -ab 320k -ar 44100
    mv a.m4a "${i%.*}.m4a"
done

