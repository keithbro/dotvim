execute pathogen#infect()

let mapleader = " "

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

autocmd Filetype perl setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype emblem setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2

" UI Config
set cursorline
set showmatch

" Searching
set incsearch
set hlsearch

set fileencodings=utf-8,latin1,sjis,default
set encoding=utf8

"match ErrorMsg '\s\+$'

set list listchars=tab:»·,trail:·,nbsp:·

set colorcolumn=80

set number
set numberwidth=5

set wildmenu

"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
