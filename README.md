# mod2mp3 Conversion Script

This Bash script automates the process of converting `.mod` files to `.mp3` using `xmp` for `.mod` to `.wav` conversion, followed by `ffmpeg` for `.wav` to `.mp3` encoding. It is useful for batch-processing `.mod` files in a directory, eliminating the need for manual conversions.

## Prerequisites

Ensure the following software is installed on your system before running the script:

`xmp       (for converting .mod files to .wav)`

`ffmpeg    (for converting .wav files to .mp3)`

Both packages are available via most Linux package managers such as `apt` (Debian/Ubuntu), `dnf` (Fedora), and `yum` (CentOS).

## Usage

1. **Clone** the repository or download the `mod2mp3.sh` script.
2. Open a terminal and **navigate** to the directory where the script and `.mod` files are located.
3. **Run** the script:
   
```
./mod2mp3.sh
```

The script will automatically:

1. Detect all .mod files in the directory.
2. Convert each .mod file to .wav using xmp.
3. Encode the .wav files to .mp3 using ffmpeg.
4. Delete the intermediate .wav files (optional).

NB: If you have track1.mod and track2.mod in the directory, running the script will generate track1.mp3 and track2.mp3.

## Optional: Edit the Script

You can modify the script to preserve .wav files by commenting out the line that removes them (rm "$wavfile"). Additionally, you can adjust the quality of the .mp3 output by changing the -q:a option in the ffmpeg command (lower numbers yield higher quality).
