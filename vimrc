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
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'valloric/youcompleteme'
call plug#end()

let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader><RIGHT> <C-w><
nnoremap <leader><LEFT> <C-w>>
nnoremap <leader><UP> <C-w>-
nnoremap <leader><DOWN> <C-w>+
nnoremap <leader>b :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>l :lopen<CR><C-w>k
nnoremap <leader>q :lclose<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

let g:ycm_always_populate_location_list = 1
