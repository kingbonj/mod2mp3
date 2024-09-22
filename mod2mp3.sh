#!/bin/bash

for modfile in *.mod; do
  wavfile="${modfile%.mod}.wav"
  mp3file="${modfile%.mod}.mp3"
  
  # Convert .mod to .wav using xmp
  xmp "$modfile" -o "$wavfile"
  
  # Convert .wav to .mp3 using ffmpeg
  ffmpeg -i "$wavfile" -q:a 2 "$mp3file"
  
  # Optionally remove the intermediate .wav file
  rm "$wavfile"
done
