#!/bin/bash

# WebM Conversion Utility by MrChowderClam v0.0.1
# Based on the awesome windos version of WebM Conversion Script v0.3.1 by Skyfireblaze & Skyllz

# check if brew is installed. if not, install it
hash brew 2>/dev/null || { echo >&2 "Brew is not installed. Installing it now..."; ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"; }


# Brew code from clayton's gist: https://gist.github.com/clayton/6196167
echo "Now installing ffmpeg"
brew install ffmpeg --with-vpx --with-vorbis --with-libvorbis --with-vpx --with-vorbis --with-theora --with-libogg --with-libvorbis --with-gpl --with-version3 --with-nonfree --with-postproc --with-libaacplus --with-libass --with-libcelt --with-libfaac --with-libfdk-aac --with-libfreetype --with-libmp3lame --with-libopencore-amrnb --with-libopencore-amrwb --with-libopenjpeg --with-openssl --with-libopus --with-libschroedinger --with-libspeex --with-libtheora --with-libvo-aacenc --with-libvorbis --with-libvpx --with-libx264 --with-libxvid