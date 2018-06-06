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
echo "###########                     Let's do it!                    ################"
echo "################################################################################"

################################################################################
#                              OS Select                                       #
################################################################################

# Have user input type of OS being used.  Only Ubuntu or Fedora at this time:
read -r -p "Are you running: (1) Ubuntu or (2) Fedora? [1/2]    " os
if [[ $os =~ ^([1]|[uU][bB][uU][nN][tT][uU]|[uU])$ ]]
        then 
                installer="apt-get"
elif [[ $os =~ ^([2]|[fF][eE][dD][oO][rR][aA]|[fF])$ ]]
        then
                installer="dnf"
else 
        echo "User input not recognized!"
        exit
fi 

## Run updates based on OS input from user:
        echo "Updating Package List"
        echo $installer
#        sudo $installer -y -qq update

echo 
echo "################################################################################"

#       }}} end of preliminary set up

################################################################################
#                              install applications {{{                        #
################################################################################

## install and setup vim: 
#sudo $installer install vim

## install and setup ranger: 
#sudo $installer install ranger

## install and setup rxvt: 
#sudo $installer install rxtv

#       }}} end of application installs

################################################################################
#                              Symlink files                                   #
################################################################################

######
# Testing for source directory
# http://stackoverflow.com/questions/242538/unix-shell-script-find-out-which-directory-the-script-file-resides
echo "==========="
SCRIPT=$(readlink -f "$0")
REPOPATH=$(dirname "$SCRIPT")
echo "Looks like you cloned the repo here:"
echo $REPOPATH
echo "==========="
#
######
echo 
echo "################################################################################"

echo "Backing up existing vim config file"
if [ -f ~/.vimrc ]
        then
                echo "Old vimrc exists. Creating backup!"
                ## backup .vimrc if it exists:
#               mv ~/.vimrc{,.bak-$(date "+%Y-%m-%d")}
fi

##symbolic link from dotfiles to default locations:

## vimrc
#ln -s ~$REPOPATH/vimrc ~/.vimrc 

## Adding link for Skeleton files
if [ -L ~/Skeletons ]
        then
                #echo "Skeleton Link exist"
                echo
        else
                #echo "NO Skeleton Link"
                ## vim templates
                ln -s $REPOPATH/Skeletons ~/Skeletons
                echo
fi
#
## Adding link for tmux config file
if [ -L ~/.tmux.conf ]
        then
                #echo "tmux config Link exist"
                echo 
        else
                #echo "NO tmux config Link"
                ln -s $REPOPATH/tmux.conf ~/.tmux.conf
                echo
fi

echo "################################################################################"
## Install Vundle for vim:
##       would like to set up way to check and see if Vundle exists already
echo "Seeing if Vundle is installed"
if [ -d ~/.vim/bundle/Vundle.vim ]
        then 
                echo "Vundle is installed. No need to reinstall it"
        else
                echo "Installing Vundle"
                git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
                vim +PluginInstall +qall
fi
#
##      }}} <<<End of install and setup vim>>>

echo 
echo "################################################################################"

## set up bashrc: {{{
echo "Backing up existing bash config file"
if [ -f ~/.bashrc ]
        then
                echo "Old bashrc exists. Creating backup!"
                ## back up default bashrc
#               cp ~/.bashrc{,.factory-default-$(date "+%Y-%m-%d")}
fi
## add custom bashrc sections:
#cat $REPOPATH/bashrc.additions >> ~/.bashrc

echo 
echo "################################################################################"
## set up log folder for bash history
echo "Testing to see if .logs directory exists"
if [ -d ~/.logs ]
        then
                echo ".logs directory does exist. No need to recreate it."
        else
                echo ".logs directory does not exist"
                mkdir ~/.logs
fi
#
echo 
echo "################################################################################"
##      }}} <<< End of set up bashrc>>>
#
##<<<EOF>>>>
