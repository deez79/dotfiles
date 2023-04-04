#!/usr/bin/env bash

######################################################################
# Name:  noteTaking.sh
# Brief: a script for quick notes throughout the day based on @Calin_Leafshade note taking in neovim with markdown
# Author: deez79
######################################################################

noteFilename="$HOME/Dropbox/Programming_Projects/notes/src/note-$(date +%Y-%m-%d).md"

if [ ! -f $noteFilename ]; then
    echo "# Notes for $(date +%Y-%m-%d)" > $noteFilename
fi

vim -c "norm Go" \
    -c "norm G$ " \
    -c "norm Go## $(date +%H:%M)" \
    -c "norm G2o" \
    -c "startinsert" $noteFilename


#    -c "norm zz" \




