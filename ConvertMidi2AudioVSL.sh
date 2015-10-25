#!/bin/bash
FILES=*.mid
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  sox -q -t coreaudio "Soundflower (2c" /Volumes/INTENSO/Hijack/"$f.flac" silence 1 0.1 0.1% 1 1.0 0.5%&
  java MidiPlayer -d "IAC-buss 3" "$f"
  sleep 3
done
