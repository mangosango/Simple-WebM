Simple-WebM
===========

A very simple shell script for OSX that converts videos to webm clips. Just drag and drop clips onto the icon to convert them to WebM video (perfect for GAF). Also includes script with customization settings to set:

* Custom resolution
* Custom CRF/quality level
* Max bitrate
* Start and End Times

Based on [this script for windows](http://www.neogaf.com/forum/showpost.php?p=107330048&postcount=1471). Includes install commands to install dependencies (Xcode CLI tools, brew, ffmpeg).

###Install:
* If you haven't installed XCode's command line tools, run **install_tools.command**, or if you want to update manually, just open terminal and run `xcode-select --install`
* Run **install_ffmpeg.command** to install ffmpeg and dependencies.

##### Usage (quick drag and drop):
* Drag the drag a video on **WebMConvert** app icon. Perfect for posting to GAF :D

##### Usage (full settings):
* Move **WebM.command** to the same folder as the video you wish to convert.
* Copy the name of the video you wish to convert (including the extension)
* Run **WebM.command** and follow the directions as prompted.

---------------------------------

To do:
======

* ~~Package into .app to support drag and drop user input.~~
* Make GUI (possibly using: https://github.com/maccman/macgap).
* Add pomf.se or gfycat uploading (possibly using: https://gist.github.com/KittyKatt/5818701).
* Test on 10.8 and below
