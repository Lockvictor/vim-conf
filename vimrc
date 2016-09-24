"global
set nocompatible
set number
set noswapfile
syntax enable

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set pastetoggle=<F11>	" switch normal mode and paste mode by F11


"color
set t_Co=256
color molokai
let g:rehash256 = 1     " for terminal
"let g:molokai_original = 1     " for GUI

set background=dark

" font and chinese font
"set guifont=Droid\ Sans\ Mono\ 10
"set guifontwide=NSimSun\ 10
set cursorline

"-------indent------------
"indent
set autoindent
set smartindent
set cindent
"tab = 4 space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"--------------------------

"-------fold setting------
"set fdm=indent
set fdm=marker
"--------------------------

" file type
filetype plugin on  

"nerd commender
let mapleader=","

"python.vim syntax
let python_highlight_all = 1
let python_version_2 = 1
