execute pathogen#infect()

let mapleader = " "
let g:netrw_liststyle=3

syntax enable

set t_Co=256
colorscheme xoria256

filetype plugin indent on
set laststatus=2

set smartindent
set tabstop=2
set softtabstop=2 " Backspace tabs
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

autocmd Filetype perl setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=4 sts=4 sw=4

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

set mouse=a

set path+=lib

command E Explore

au BufReadPost *.pp set syntax=ruby

"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

let g:ctrlp_map = '<c-p>'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
