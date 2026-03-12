#!/usr/bin/env bash

# #############################################################################
# ######################## How to setup for kiosk #############################
# #############################################################################
#
# need to add the following to ~/bash_profile
# ```shell
# # Auto start tmux pipes session on tty login
# if [ -z "$TMUX" ] && [ "$(tty)" = "/dev/tty1" ]; then
#     ~/pipe_launcher.sh
# fi
# ```
#
# #############################################################################

SESH="PIPES"
WORKDIR="/home/deez79/"

# See if session exists
if ! tmux has-session -t $SESH 2>/dev/null; then
    tmux new-session -d -s $SESH -n "main"
    tmux send-keys -t $SESH:main "cd $WORKDIR" C-m
    tmux send-keys -t $SESH:main.0 "pipes -t 2" C-m
fi

# Attach terminal to session
tmux attach-session -t "$SESH"
