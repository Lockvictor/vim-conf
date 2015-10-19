" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" You can also specify a different font, overriding the default font
"if has('gui_gtk2')
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"else
"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"endif

" If you want to run gvim with a dark background, try using a different
" colorscheme or running 'gvim -reverse'.
" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
" downloads for the colorschemes on vim.org

" Source a global configuration file if available
if filereadable("/etc/gvimrc")
  source /etc/gvimrc
endif



" Multi-encoding setting, MUST BE IN THE BEGINNING OF .vimrc! 
if has("multi_byte") 
    " When 'fileencodings' starts with 'ucs-bom', don't do this manually 
    "set bomb 
    set fileencodings=ucs-bom,utf-8,chinese,taiwan,japan,korea,latin1 
    " CJK environment detection and corresponding setting 
    if v:lang =~ "^zh_CN" 
        " Simplified Chinese, on Unix euc-cn, on MS-Windows cp936 
        set encoding=chinese 
        set termencoding=chinese 
        if &fileencoding == '' 
            set fileencoding=chinese 
        endif 
    elseif v:lang =~ "^zh_TW" 
        " Traditional Chinese, on Unix euc-tw, on MS-Windows cp950 
        set encoding=taiwan 
        set termencoding=taiwan 
        if &fileencoding == '' 
            set fileencoding=taiwan 
        endif 
    elseif v:lang =~ "^ja_JP" 
        " Japanese, on Unix euc-jp, on MS-Windows cp932 
        set encoding=japan 
        set termencoding=japan 
        if &fileencoding == '' 
            set fileencoding=japan 
        endif 
    elseif v:lang =~ "^ko" 
        " Korean on Unix euc-kr, on MS-Windows cp949 
        set encoding=korea 
        set termencoding=korea 
        if &fileencoding == '' 
            set fileencoding=korea 
        endif 
    endif 
    " Detect UTF-8 locale, and override CJK setting if needed 
    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$" 
        set encoding=utf-8 
    endif 
else 
    echoerr 'Sorry, this version of (g)Vim was not compiled with "multi_byte"' 
endif 

"color
set nu
color molokai
let g:molokai_original = 1     " for GUI
syntax enable


"---------window---------
winpos 340 10 

"no toolbar
set guioptions-=T

"default size of the window
set lines=40
set columns=110
"set guifont=Droid_Sans_Mono:h9:cANSI
"-------------------------

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
"-------------------------

"other
set noswapfile
set cursorline
set backup
"-------------------------------

"move the line by [Alt]+[j] or [Alt]+[k]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"fold setting
"set fdm=indent
set fdm=marker
"-------------------------------

" file type
filetype plugin on
filetype plugin indent on

"nerd commender
let mapleader=","

"python.vim syntax
let python_highlight_all = 1
let python_version_2 = 1
