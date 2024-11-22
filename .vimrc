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
set autochdir

noremap <LEADER> :nohlsearch
inoremap jk <ESC>

map <C-r> :source $MYVIMRC<CR>
map ; :

" call plug#begin('~/.vim/plugged')
" 
" Plug 'vim-airline/vim-airline'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }
" 
" call plug#end()
" 
" colorscheme catppuccin_mocha
" let g:airline_theme = 'catppuccin_mocha'
" let g:lightline = {'colorscheme': 'catppuccin_mocha'}
