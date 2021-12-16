#!/usr/bin/env bash

######################################################################
# Name: <script_title>
# Brief: <human_readable_explaination>
# Author: <user_creator>
######################################################################

# Style Guide taken from:
# https://bluepenguinlist.com/2016/11/04/bash-scripting-tutorial/


# Constants
# readonly EXAMPLE_CONSTANT="Constant string"

# CamelCase Variable
# ExampleVar="Using CamelCase"

# Functions
# function someFunction ()
# {
#       local someVar=2
#       operation
#       return 0
# }

read -r -p "Name of current playlist? " PLAYLIST
read -r -p "URL of current playlist? " URL


PLAYLIST_FULL="${HOME}/Music/Youtube/${PLAYLIST}"

# Check if directory exists, if not, create it
[ ! -d  "$PLAYLIST_FULL" ] && mkdir -p "$PLAYLIST_FULL"

pushd $PLAYLIST_FULL

youtube-dl-audio.sh $URL

popd



