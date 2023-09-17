set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'

call vundle#end()

filetype plugin indent on

let mapleader = " "
let g:netrw_liststyle=3

syntax enable

colorscheme xoria256

set laststatus=2
set tabstop=2
set softtabstop=2 " Backspace tabs
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set relativenumber
set nocompatible

autocmd Filetype perl,html setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal nolist noexpandtab

" UI Config
set cursorline
set cursorcolumn
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

set path+=lib

au BufReadPost *.pp set syntax=ruby

"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" Show the BOM
if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

nnoremap <leader>] :ALEGoToDefinition<cr>
nnoremap <leader>f :ALEFix<cr>

nnoremap <C-p> :FZF<cr>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ale_fixers = { 'ruby': ['rubocop'] }

let g:rspec_command = "!bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm2"
