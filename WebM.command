#!/bin/bash

# WebM Conversion Utility by MrChowderClam v0.0.1
# Based on the awesome windos version of WebM Conversion Script v0.3.1 by Skyfireblaze & Skyllz

VIDEO_NAME="video.mp4"
START_TIME="10"
END_TIME="15"
WIDTH=640
QUALITY=4
BITRATE=2
AUDIO="no"
CODEC="libvpx"

cd "${0%/*}"

command -v ffmpeg >/dev/null 2>&1 || { echo >&2 "ffmpeg is not installed. Please install it using the included installer."; exit 1; }

echo -e "\x1B[90m\n##############################\x1B[0m"
echo -e "\x1B[90m\x1B[34mWelcome to the WebM Conversion Utility by MrChowderClam for Mac v0.0.1\x1B[0m"
echo -e "\x1B[90mBased on the awesome Windows version of WebM Conversion Script by Skyfireblaze & Skyllz\x1B[0m"
echo -e "\x1B[90mMade for Gaf! <3\x1B[0m"
echo -e "\x1B[90m##############################\n\x1B[0m"
echo -e "Getting ready to convert: "$1
echo -e ""

# Get Video Name
echo -e "Enter the name of the video you wish to convert (for example video.mp4): "
read VIDEO_NAME
echo ""

# Get Start Time
echo -e "Enter start time in seconds or HH:MM:SS.mss (for example 00:00:10.000 or 10): "
read START_TIME
echo ""

# Get End Time
echo -e "Enter end time in seconds or HH:MM:SS.mss (for example 00:00:20.000 or 20): "
read END_TIME
echo ""

# Get Width
echo -e "Enter width of video in pixels (the video height will be automatically calculated to maintain the original aspect ratio. Type 640 if unsure.): "
read WIDTH
echo ""

# Get Quality
echo -e "Enter the base quality level from 4 to 63 (lower is better. Type 4 if unsure.): "
read QUALITY
echo ""

# Get Bitrate
echo -e "Enter the maximum bitrate in MBit's/sec (higher is better. Type 2 if unsure.): "
read BITRATE
echo ""

# Get Quality
echo -e "Include audio? (y/n): "
read AUDIO
if [ $AUDIO == "no" ] || [ $AUDIO == "n" ]
then
	AUDIO="-an"
else
	AUDIO="Audio=-c:a libvorbis"
fi
echo ""

# Run conversion
echo -e "Starting conversion: ffmpeg -i $VIDEO_NAME -ss $START_TIME -to $END_TIME -c:v $CODEC -crf $QUALITY -b:v ${BITRATE}M -vf scale=${WIDTH}:-1 $AUDIO ${VIDEO_NAME}.converted.webm"

ffmpeg -i $VIDEO_NAME -ss $START_TIME -to $END_TIME -c:v $CODEC -crf $QUALITY -b:v ${BITRATE}M -vf scale=${WIDTH}:-1 $AUDIO ${VIDEO_NAME}.converted.webm

echo -e "\x1B[90m\x1B[34mSuccessfully Converted: $VIDEO_NAME to ${VIDEO_NAME}.converted.webm\x1B[0m"
