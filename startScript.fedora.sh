#!/bin/bash

################################################################################
#
#       startup script attribution:
#
#       created by: deez79
#       date created: 06/28/2016
#
################################################################################

# install and setup vim: {{{

# do the install
sudo dnf install vim

# backup .vimrc if it exists:
mv ~/.vimrc{,.bak-$(date "+%Y-%m-%d")}

#symbolic link from dotfiles to default locations:
#       need to set up variable for dotfiles location.  By default I put them in ~/Downloads
ln -s ~/Downloads/dotfiles/.vimrc ~/.vimrc 
# vim templates
ln -s ~/Downloads/dotfiles/Skeletons ~/Skeletons

# Install Vundle for vim:
#       would like to set up way to check and see if Vundle exists already
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


#}}} <<<End of install and setup vim>>>

# set up bashrc: {{{

# back up default bashrc
cp ~/.bashrc{,.factory-default-$(date "+%Y-%m-%d")}

# add custom bashrc sections:
cat ~/Downloads/dotfiles/bashrc.additions >> ~/.bashrc

# set up log folder for bash history
mkdir ~/.logs


#}}}} <<< End of set up bashrc>>>



#<<<EOF>>>>
