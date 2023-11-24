"
" ~/.vimrc
"

let mapleader=" "
syntax on

set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod
set foldlevel=99
set autochdir

noremap <LEADER> :nohlsearch
inoremap jk <ESC>

map s <nop>
map <C-s> :w<CR>
map <C-q> :wq<CR>
map <C-r> :source $MYVIMRC<CR>
map ; :

map w< :set nosplitright<CR>:vsplit<CR>
map w> :set splitright<CR>:vsplit<CR>
map w^ :set nosplitbelow<CR>:split<CR>
map wv :set splitbelow<CR>:split<CR>

map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fneu/breezy'

call plug#end()
" set background=dark
" color snazzy
colorscheme breezy
let g:SnazzyTransparent = 1

