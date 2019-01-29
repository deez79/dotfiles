#!/usr/bin/env bash

######################################################################
# Name:     cameraCapture.sh
# Brief:    script to use webcam to capture via ffmpeg
# Author:   deez79
######################################################################

ffmpeg -framerate 25 -video_size 640x480 -i /dev/video0 $HOME/tmp/output.mkv
