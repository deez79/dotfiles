#!/usr/bin/env bash

######################################################################
# Name:     startup_xrdb.sh
# Brief:    used to load xresources on boot 
# Author:   deez79 
######################################################################

xrdb -I$HOME ~/.Xresources 
