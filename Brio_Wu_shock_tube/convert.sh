#!bin/bash

## convert the movies into gif in linux terminal
for file in *.avi; do
    ffmpeg -i "{file}" "{file%.*}.gif";
done

echo converted movie to gif
