#!/usr/bin/env bash

######################################################################
# Name: irc.sh
# Brief: script to launch irssi in a detached tmux window
# Author: deez79
######################################################################

tmux new -s irssi -d
tmux send-keys -t irssi 'irssi' C-m
