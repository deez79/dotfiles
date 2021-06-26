#!/usr/bin/env bash

######################################################################
# Name: manspalin.sh
# Brief: output of manpages into Post Script via zathura
# Author: deez79
######################################################################

man -k . | dmenu -l 30 | awk '{print $1}' | xargs -r man -Tps | zathura -
