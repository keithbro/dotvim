" Turn on that syntax highlighting
syntax enable

set t_Co=256
colorscheme xoria256

filetype plugin indent on
set laststatus=2

set smartindent
set tabstop=4
set softtabstop=4 " Backspace tabs
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" UI Config
set cursorline
set showmatch

" Searching
set incsearch
set hlsearch

set encoding=utf8

match ErrorMsg '\s\+$'

set list
set listchars=tab:+\ 
