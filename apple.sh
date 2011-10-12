#!/bin/sh

rm *.m4a

for i in *.flac ;
do
    echo $i
    ffmpeg -i "$i" -y -acodec alac a.m4a -map_meta_data a.m4a:"$i"
    mv a.m4a "${i%.*}.m4a"
done

