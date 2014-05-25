#!/bin/bash

# WebM Conversion Utility by MrChowderClam v0.0.1
# Based on the awesome windos version of WebM Conversion Script v0.3.1 by Skyfireblaze & Skyllz

WIDTH=640
QUALITY=4
BITRATE=5
AUDIO="-an"
CODEC="libvpx"

# Loop over args
for VIDEO_NAME
do
	echo -e "Converting $VIDEO_NAME..."
	/usr/local/bin/ffmpeg -y -i "$VIDEO_NAME" -c:v $CODEC -crf $QUALITY -b:v ${BITRATE}M -vf scale=${WIDTH}:-1 $AUDIO "${VIDEO_NAME}.converted.webm"
done

# Finished!
echo -e "Finished Converting $# files."