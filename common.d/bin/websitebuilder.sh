#!/usr/bin/env bash

######################################################################
# Name:     websitebuilder
# Brief:    Use this site to create a docker conatianer for a website
# Author:   deez79 
######################################################################

#PROJECT=input"What is the name of your website project?"
read -r -p "What is the name of your website project? " PROJECT
echo $USER/$PROJECT-website
#docker image -t $USER/$PROJECT-website .

