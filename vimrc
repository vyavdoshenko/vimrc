" General
filetype plugin indent on
set nocompatible
set hidden
syntax enable
set lbr
set history=1000
set ruler
set showcmd
set wildmenu
set scrolloff=5

" Splits
set splitbelow
set splitright

" Encoding
scriptencoding utf-8
set encoding=utf-8

" Indent
set smartindent
set copyindent
set autoindent

" Tabs
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

call plug#begin('~/.vim/plugged')
" https://github.com/patstockwell/vim-monokai-tasty
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Optional themes for airline/lightline
let g:airline_theme='monokai_tasty'                   " airline theme
let g:lightline = { 'colorscheme': 'monokai_tasty' }  " lightline theme
