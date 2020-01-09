 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "       .vimrc Attribution: 
 "
 "       Created by: @deez79
 "       Date created: 05/19/2016
 "
 "       Basic installs: "{{{
 "               1. install bundle:
 "                      $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
 "               2. set up bundle in .vimrc 
 "                      set nocompatible              " be iMproved, required
 "                      filetype off                  " required
 "
 "                     " set the runtime path to include Vundle and initialize
 "                     set rtp+=~/.vim/bundle/Vundle.vim
 "                     call vundle#begin()
 "                     " alternatively, pass a path where Vundle should install plugins
 "                     "call vundle#begin('~/some/path/here')
 "
 "                     " let Vundle manage Vundle, required
 "                     Plugin 'VundleVim/Vundle.vim'
 "                     " The following are examples of different formats supported.
 "                     " Keep Plugin commands between vundle#begin/end.
 "                     " plugin on GitHub repo
 "                     Plugin 'tpope/vim-fugitive'
 "                     " plugin from http://vim-scripts.org/vim/scripts.html
 "                     Plugin 'L9'
 "                     " Git plugin not hosted on GitHub
 "                     Plugin 'git://git.wincent.com/command-t.git'
 "                     " git repos on your local machine (i.e. when working on your own plugin)
 "                     Plugin 'file:///home/gmarik/path/to/plugin'
 "                     " The sparkup vim script is in a subdirectory of this repo called vim.
 "                     " Pass the path to set the runtimepath properly.
 "                     Plugin 'rstacruz/sparkup', {'rtp':'vim/'}
 "                     " Install L9 and avoid a Naming conflict if you've already installed a
 "                     " different version somewhere else.
 "                     Plugin 'ascenator/L9', {'name':'newL9'}
 "
 "                     " All of your Plugins must be added before the following line
 "                     call vundle#end()            "required
 "                     filetype plugin indent on    "required
 "                     " To ignore plugin indent changes, instead use:
 "                     "filetype plugin on
 "                     "
 "                     " Brief help
 "                     " :PluginList       - lists configured plugins
 "                     " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 "                     " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 "                     " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "                     "
 "                     " see :h vundle for more details or wiki for FAQ
 "                     " Put your non-Plugin stuff after this line
 "
 "
 "}}}<<<end of Basic install>>>
 "
 "
 "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
 
 "=> Vundle Section:{{{

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
 " add cool themes to airline:
 Plugin 'vim-airline/vim-airline-themes'
 
 " Commenting
 Plugin 'tomtom/tcomment_vim'
 
 " Emmet for vim  !!!  
 Plugin 'mattn/emmet-vim'
 
 " Minimap like the one in sublimetext
 "Plugin 'severin-lemaignan/vim-minimap'

 " Markdown Highlightingr 
 Plugin 'godlygeek/tabular'
 Plugin 'plasticboy/vim-markdown'

 " Auto Pairing for brackets, paren, and quotes
 Plugin 'jiangmiao/auto-pairs'

 " Color
 Plugin 'sjl/badwolf'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tomasr/molokai'
 Plugin 'zaiste/Atom'
 Plugin 'chriskempson/base16-vim'
 Plugin 'abra/vim-obsidian'
 Plugin 'michalbachowski/vim-wombat256mod'
 Plugin 'patstockwell/vim-monokai-tasty'
 Plugin 'NLKNguyen/papercolor-theme'
 " Utilisnips Pluggin
 " Track the engine.
" Plugin 'SirVer/ultisnips'
 " Snippets are separated from the engine. Add this if you want them:
 " Plugin 'honza/vim-snippets'

 " Verticle Indent Lines to show nesting:
 Plugin 'Yggdroot/indentLine'

 " Live Preview of PDF
 Plugin 'xuhdev/vim-latex-live-preview'

 " post install (yarn install | npm install)
 Plugin 'prettier/vim-prettier'

 " syntax highlighting for i3-gaps 
 Plugin 'PotatoesMaster/i3-vim-syntax'
 
 " python IDE
Plugin 'python-mode/python-mode' 

" NERDTree file navigation
Plugin 'preservim/nerdtree'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 "}}}<<<end of Vundle Section>>>
 
 "=> General Section:{{{
 
 " activate numbering
 set number
 set relativenumber
 
 "set up templates for filetypes
autocmd BufNewFile *.md   0read ~/Skeletons/skeleton.md
autocmd BufNewFile *.sh   0read ~/Skeletons/skeleton.sh
autocmd BufNewFile *.ino  0read ~/Skeletons/skeleton.ino
autocmd BufNewFile *.py   0read ~/Skeletons/skeleton.py
"autocmd BufNewFile *.c    0read ~/Skeletons/skeleton.c
"autocmd BufNewFile *.h    0read ~/Skeletons/skeleton.h
"autocmd BufNewFile *.java 0read ~/Skeletons/skeleton.java

" add highlighting
 set hlsearch
" Press Space to turn off highlighting and clear any message already
" displayed.
 nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
 noremap <F4> :set hlsearch! hlsearch?<CR>

" automatically reload vimrc when it's saved
 "      taken from: http://www.vimbits.com/bits/128
 "      seems to bogdown vim.  Probably remove it.
"autocmd BufWritePost .vimrc so ~/.vimrc

" Make 81st column stand out:
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" For use with copying and pasting from the system clipboard:
" vnoremap <C-c> "+y
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+p

" NERDTree {{{
map <Leader>n :NERDTreeToggle<CR>
" }}}
 
 "}}}<<<end of General Section>>>
 
"=> Set Fold Method:{{{
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
 " }}}<<<end of fold method>>>

"> Color Section: {{{
set t_Co=256
let g:solarized_termcolors=256
let base16colorspace=256  " Access colors present in 256 colorspace

" Colors set to solarized (use if accessing from c9)
"set background=dark
"colorscheme solarized
"colorscheme desert
colorscheme atom
"colorscheme molokai

" color theme for airline:
let g:airline_theme='luna'

"}}}<<<end of color section>>>

"=> VimCasts:{{{
"""""""""Show Invisibles{{{""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcut to rapidly toggle `set list` nmap <leader>l :set list!<CR> " Use the same symbols as TextMate for tabstops and EOLs The "if patch" is taken from: http://stackoverflow.com/questions/18321538/vim-error-e474-invalid-argument-listchars-tab-trailhttp://stackoverflow.com/questions/18321538/vim-error-e474-invalid-argument-listchars-tab-trail to work around the tab and eol characters.  if has("patch-7.4.710") set listchars=tab:▸\ ,eol:¬ endif
"}}}<<<end show invisibles>>>

"""""""""Tabs and Spaces{{{""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4 settings:
"tabstop: specifies the width of a tab character
"expandtab: when eneabled causes spaces to be used instead of tab characters
"softtabstop: when enabled fine tunes the abmount of whitespace to be inserted
"shiftwidth: determines the amount of whitespace to insert or remove using the
"	indentation commands in normal mode
"
" If you want to alway characters then tabstop == stoftab
" If you prefer to work with spaces then softtabstop == shiftwidth

"set ts=8 sts=0 sw=8 noexpandtab " default settings
"set ts=8 sts=0 sw=8 expandtab
"set ts=8 sts=8 sw=8 expandtab "prefered settings for now
set ts=4 sts=4 sw=4 expandtab "Default.  Used for Python Code!
"set ts=8 sts=4 sw=4 expandtab
"set ts=8 sts=4 sw=4 noexpandtab
"set ts=4 sts=4 sw=4 noexpandtab

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
	let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
	if l:tabstop > 0
		let &l:sts = l:tabstop
		let &l:ts = l:tabstop
		let &l:sw = l:tabstop
	endif
	call SummarizeTabs()
endfunction

function! SummarizeTabs()
	try
		echohl ModeMsg
		echon 'tabstop='.&l:ts
		echon ' shiftwidth='.&l:sw
		echon ' softtabstop='.&l:sts
		if &l:et
			echon ' expandtab'
		else
			echon 'noexpandtab'
		endif
	finally
		echohl None
	endtry
endfunction
"}}}<<<end tabs and spaces>>>

"""""""""Utilisnips:{{{""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://vimcasts.org/episodes/meet-ultisnips/
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" }}} <<<end of Utilisnips>>>
 
"}}} <<end of VimCasts>>>

" => Options {{{

" set viewer for pdf preview:
 "let g:livepreview_previewer = 'Document_Viewer'

 "}}} <<<end of Options>>>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<<<EOF>>>

""" additional inculdes """

if filereadable( $HOME . "/.local/local.vimrc")
    source ~/.local/local.vimrc
endif
