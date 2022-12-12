#!/usr/bin/env bash

######################################################################
# Name: discord_bot.sh
# Brief: launch discord bot in python3 in detached tmux window
# Author: deez79
######################################################################

tmux new -s discord_bot -d
tmux send-keys -t discord_bot 'python3 /home/ec2-user/Documents/discord_bot/bot.py' C-m
