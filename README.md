Simple-WebM
===========

A very simple shell script for mac that converts videos to webm clips.

Based on [this script for windows](http://www.neogaf.com/forum/showpost.php?p=107330048&postcount=1471). Includes install commands to install dependencies (Xcode CLI tools, brew, ffmpeg).

###Install:
* If you haven't installed XCode's command line tools, run **install_tools.command*, or simply open terminal and type `xcode-select --install`
* Run **install_ffmpeg.command** to install ffmpeg and dependencies.

###Usage: 
* Move WebM.command to the same folder as the video you wish to convert.
* Copy the name of the video you wish to convert (including the extension)
* Run WebM.command and follow the directions as prompted.

---------------------------------

To do:
======

Package into .app to support drag and drop user input. Make GUI (possibly using: https://github.com/maccman/macgap).
