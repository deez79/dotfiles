#!/bin/bash

# install and setup vim {{{:

# do the install
sudo apt-get install vim

# backup .vimrc if it exists:
mv ~/.vimrc{,.bak-$(date "+%Y-%m-%d")}

#symbolic link from dotfiles to default locations:
#       need to set up variable for dotfiles location.  By default I put them in ~/Downloads
ln -s ~/Downloads/dotfiles/.vimrc ~/.vimrc 

# Install Vundle for vim:
#       would like to set up way to check and see if Vundle exists already
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


#}}} <<<End of install and setup vim>>>





#<<<EOF>>>>
