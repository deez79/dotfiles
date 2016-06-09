 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "       .vimrc Attribution: 
 "
 "       Created by: @deez79
 "       Date created: 05/19/2016
 "
 "       Basic installs: "{{{
 "               1.      install bundle:
 "                               $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
 "                               
 "               2.      set up bundle in .vimrc 
 "                                       set nocompatible              " be iMproved, required
 "                                       filetype off                  " required
 "
 "                                       " set the runtime path to include Vundle and initialize
 "                                       set rtp+=~/.vim/bundle/Vundle.vim
 "                                       call vundle#begin()
 "                                       " alternatively, pass a path where Vundle should install plugins
 "                                       "call vundle#begin('~/some/path/here')
 "
 "                                       " let Vundle manage Vundle, required
 "                                       Plugin 'VundleVim/Vundle.vim'
 "                                       " The following are examples of different formats supported.
 "                                       " Keep Plugin commands between vundle#begin/end.
 "                                       " plugin on GitHub repo
 "                                       Plugin 'tpope/vim-fugitive'
 "                                       " plugin from http://vim-scripts.org/vim/scripts.html
 "                                       Plugin 'L9'
 "                                       " Git plugin not hosted on GitHub
 "                                       Plugin 'git://git.wincent.com/command-t.git'
 "                                       " git repos on your local machine (i.e. when working on your own plugin)
 "                                       Plugin 'file:///home/gmarik/path/to/plugin'
 "                                       " The sparkup vim script is in a subdirectory of this repo called vim.
 "                                       " Pass the path to set the runtimepath properly.
 "                                       Plugin 'rstacruz/sparkup', {'rtp':'vim/'}
 "                                       " Install L9 and avoid a Naming conflict if you've already installed a
 "                                       " different version somewhere else.
 "                                       Plugin 'ascenator/L9', {'name':'newL9'}
 "
 "                                       " All of your Plugins must be added before the following line
 "                                       call vundle#end()            "required
 "                                       filetype plugin indent on    "required
 "                                       " To ignore plugin indent changes, instead use:
 "                                       "filetype plugin on
 "                                       "
 "                                       " Brief help
 "                                       " :PluginList       - lists configured plugins
 "                                       " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 "                                       " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 "                                       " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "                                       "
 "                                       " see :h vundle for more details or wiki for FAQ
 "                                       " Put your non-Plugin stuff after this line
 "
 "
 "}}}
 "
 "
 " 
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
 
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "       Vundle Section:{{{
 "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set nocompatible              " be iMproved, required
 filetype off                  " required
 
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
 
 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 
 " Basics
 Plugin 'tpope/vim-sensible'
 
 " Fuzzy Find
 Plugin 'kien/ctrlp.vim'
 
 " Fancy Bar on bottom 
 Plugin 'bling/vim-airline'
 
 " Commenting
 Plugin 'tomtom/tcomment_vim'
 
 " Emmet for vim  !!!  
 Plugin 'mattn/emmet-vim'
 
 " Minimap like the one in sublimetext
 "Plugin 'severin-lemaignan/vim-minimap'
 
 " Color
 Plugin 'sjl/badwolf'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tomasr/molokai'
 Plugin 'zaiste/Atom'
 
 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 "}}}
 
 
 " activate numbering
 set number
 set relativenumber
 
 
 " Set fold Method{{{
 set foldmethod=marker
 
 " Fold Method types:
 " 
 "       maker
 "       indent
 "       manual
 "       diff
 "       expr
 "       syntax
 "
 " Fold Commands:
 "zM => fold all
 "zR => unfold all
 "za => fold
 " Default marker is: {{{ and }}}
 "       How to change markers
 "       set foldmarker=start, end
 "       i.e
 "               set foldmaker=/*,*/
 " }}}


set t_Co=256
"let g:solarized_termcolors=256

" Colors set to solarized (use if accessing from c9)
"set background=dark
"colorscheme solarized
"colorscheme desert

colorscheme molokai


