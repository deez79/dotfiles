 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "       .vimrc Attribution:
 "
 "       Created by: @deez79
 "       Date revised: 05/28/2021
 "
 "       Basic installs: "{{{
 "}}}<<<end of Basic install>>>
 "
 "
 "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 "=> General Settings:{{{
 syntax on

 set path+=**

 " Nice menu when typing `:find *.py`
 set wildmode=longest,list,full
 set wildmenu
 " Ignore files
 set wildignore+=*.pyc
 set wildignore+=*_build/*
 set wildignore+=**/coverage/*
 set wildignore+=**/node_modules/*
 set wildignore+=**/android/*
 set wildignore+=**/ios/*
 set wildignore+=**/.git/*

 set tabstop=4 softtabstop=4
 set shiftwidth=4
 set expandtab
 set smartindent

 set noerrorbells
 set exrc
 set guicursor=
 set hidden
 set wrap

 set number
 set relativenumber

 set incsearch
 "set hlsearch
 "set nohlsearch
 "set smartcase
 "set ignorecase

 set foldmethod=marker

 " Make 81st column stand out:
 highlight ColorColumn ctermbg=magenta
 call matchadd('ColorColumn', '\%81v', 100)
 "set colorcolumn=80

 set signcolumn=yes

 set scrolloff=8

 set noswapfile
 set nobackup
 set undodir=~/.vim/undodir
 set undofile

 "}}} <end General Settings>

 "=> Plug Section:{{{
 call plug#begin('~/.vim/plugged')

 " Basics
 Plug 'tpope/vim-sensible'
 Plug 'tpope/vim-fugitive'

 " Color
 Plug 'altercation/vim-colors-solarized'
 Plug 'tomasr/molokai'
 Plug 'zaiste/Atom'
 Plug 'NLKNguyen/papercolor-theme'
 Plug 'gruvbox-community/gruvbox'
 " Fancy Bar on bottom
 Plug 'bling/vim-airline'
 " add cool themes to airline:
 Plug 'vim-airline/vim-airline-themes'

 " man pages
 Plug 'vim-utils/vim-man'

 " Fuzzy Find
 Plug 'kien/ctrlp.vim'

 " Fast Greps
 Plug 'jremmen/vim-ripgrep'

 " Commenting
 Plug 'tomtom/tcomment_vim'

 " Emmet for vim  !!!
 Plug 'mattn/emmet-vim'

 " Markdown Highlightingr
 Plug 'godlygeek/tabular'
 Plug 'plasticboy/vim-markdown'

 " Auto Pairing for brackets, paren, and quotes
 Plug 'jiangmiao/auto-pairs'

 " Verticle Indent Lines to show nesting:
 Plug 'Yggdroot/indentLine'

 " Live Preview of PDF
 Plug 'xuhdev/vim-latex-live-preview'

 " post install (yarn install | npm install)
 Plug 'prettier/vim-prettier'

 " syntax highlighting for i3-gaps
 Plug 'PotatoesMaster/i3-vim-syntax'

 " python IDE
 Plug 'python-mode/python-mode'

 " Dockerfile.vim for dockerfile syntax highlighting
 Plug 'ekalinin/dockerfile.vim'

 " AutoComplete for a lot of languages
 Plug 'ycm-core/YouCompleteMe'
 " Undo Tree
 Plug 'mbbill/undotree'

 " Black uncompromising python code formatter
 Plug 'ambv/black'

 call plug#end()
 "}}}<<<end of Plug Section>>>

 "=> Color Section: {{{
 set termguicolors
 let g:gruvbox_italic=1

 "colorscheme atom
 colorscheme gruvbox
 "colorscheme PaperColor
 set background=dark
 highlight Normal guibg=NONE ctermbg=NONE


 " color theme for airline:
 "let g:airline_theme='luna'
 "let g:airline_theme='jellybeans'
 "let g:airline_theme='papercolor'
 let g:airline_theme='gruvbox'
 "}}}<<<end of color section>>>

 "=> Remap Section:{{{
 " Set <LEADER> Key
 let mapleader = "\<space>"

 " For use with copying and pasting from the system clipboard:
 " vnoremap <C-c> "+y
 vnoremap <C-c> "*y :let @+=@*<CR>
 map <C-p> "+p

 let g:netrw_browse_split=2
 let g:netrw_banner = 0
 let g:netrw_winsize = 25

 nnoremap <leader>h :wincmd h<CR>
 nnoremap <leader>j :wincmd j<CR>
 nnoremap <leader>k :wincmd k<CR>
 nnoremap <leader>l :wincmd l<CR>

 nnoremap <leader>u :UndotreeToggle<CR>

 nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
 nnoremap <leader>ps :Rg<space>

 nnoremap <silent> <leader>+ :vertical resize +5<CR>
 nnoremap <silent> <leader>- :vertical resize -5<CR>

 "toggle highlightSearch with double leader tap
 let hlstate=0
 nnoremap <leader> <leader> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

"YouCompleteMe
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>


nmap <leader>ve :edit ~/.vimrc<cr>
nmap <leader>vs :source ~/.vimrc<cr>
"}}} <End of Remap Section

 "=> Autocmd Section: {{{
    "=> Template Section:{{{
 "set up templates for filetypes
 autocmd BufNewFile *.md   0read ~/Skeletons/skeleton.md
 autocmd BufNewFile *.sh   0read ~/Skeletons/skeleton.sh
 autocmd BufNewFile *.ino  0read ~/Skeletons/skeleton.ino
 autocmd BufNewFile *.py   0read ~/Skeletons/skeleton.py
 autocmd BufNewFile *.py   0read ~/Skeletons/skeleton.py
 "autocmd BufNewFile *.h    0read ~/Skeletons/skeleton.h
 "autocmd BufNewFile *.java 0read ~/Skeletons/skeleton.java
    "}}} <End of Template Section>

 fun! TrimWhitespace()
     let l:save = winsaveview()
     keeppatterns %s/\s\+$//e
     call winrestview(l:save)
 endfun

 augroup PERSONAL_GROUP
     autocmd!
     autocmd BufwritePre * :call TrimWhitespace()
 augroup END
 "}}} <End Autocmd Section>

 """ additional inculdes """

 if filereadable( $HOME . "/.local/local.vimrc")
    source ~/.local/local.vimrc
 endif
