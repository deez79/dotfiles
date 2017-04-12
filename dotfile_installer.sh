#!/bin/bash

################################################################################
#
#       dotfile install script:
#               used to set up new system with vim and other basics
#               (updated functionallity from initial setup script)
#       created by: deez79
#       date created: 04/10/2017 
#
################################################################################

# preliminary setup {{{

# clear it up and let's get started:
clear

echo "################################################################################"
echo "############################### Let's do it!####################################"
echo "################################################################################"

################################################################################
#                              OS Select                                       #
################################################################################

# Have user input type of OS being used.  Only Ubuntu or Fedora at this time:
read -r -p "Are you running: (1) Ubuntu or (2) Fedora? [1/2]    " os
if [[ $os =~ ^([1]|[uU][bB][uU][nN][tT][uU])$ ]]
        then 
                installer="apt-get"
elif [[ $os =~ ^([2]|[fF][eE][dD][oO][rR][aA])$ ]]
        then
                installer="dnf"
else 
        echo "User input not recognized!"
        exit
fi 

# Run updates based on OS input from user:
#clear
        echo "Updating Package List"
        echo $installer
#        sudo $installer -y -qq update


#       }}} end of preliminary set up

################################################################################
#                              install vim                                     #
################################################################################

## install and setup vim: {{{

## do the install
#sudo $installer install vim
#
################################################################################
#                              Symlink files                                   #
################################################################################
#
echo "Backing up existing config files"
if [ -f ~/.vimrc ]
        then
                echo "Old vimrc exists. Creating backup!"
#               mv ~/.vimrc{,.bak-$(date "+%Y-%m-%d")}
fi
## backup .vimrc if it exists:

##symbolic link from dotfiles to default locations:
##       need to set up variable for dotfiles location.  By default I put them in ~/Downloads
## vimrc
#ln -s ~/Downloads/dotfiles/vimrc ~/.vimrc 
## vim templates
#ln -s ~/Downloads/dotfiles/Skeletons ~/Skeletons
#
## Install Vundle for vim:
##       would like to set up way to check and see if Vundle exists already
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#
#
##}}} <<<End of install and setup vim>>>

## set up bashrc: {{{

## back up default bashrc
#cp ~/.bashrc{,.factory-default-$(date "+%Y-%m-%d")}
#
## add custom bashrc sections:
#cat ~/Downloads/dotfiles/bashrc.additions >> ~/.bashrc
#
## set up log folder for bash history
#mkdir ~/.logs
#
#
##}}}} <<< End of set up bashrc>>>
#
##<<<EOF>>>>
