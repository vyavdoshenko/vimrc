" General
filetype plugin indent on
set nocompatible             " Make vim configuration no compatible to classical vi
set hidden                   " Enable switching buffers when changes are not saved
syntax enable                " Enables colors for different syntax
set history=1000             " Enlarge history list
set ruler
set showcmd
set wildmenu
set scrolloff=5
set mouse=a                  " Enable mouse drag on window splits

" Splits
set splitbelow               " Always split below
set splitright               " Always split right

" Encoding
scriptencoding utf-8
set encoding=utf-8

" Indent
set smartindent
set copyindent
set autoindent

" Tabs
set smarttab
set tabstop=4                " How many columns of whitespace a \t is worth
set shiftwidth=4             " How many columns of whitespace a 'level of indentation' is worth
set expandtab                " Use spaces when tabbing
set softtabstop=4

" Searching
set ignorecase
set smartcase
set incsearch                " Enable incremental search

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'valloric/youcompleteme'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Colorsheme settings
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Status line settings
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

" Key mappings
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader><RIGHT> <C-w><
nnoremap <leader><LEFT> <C-w>>
nnoremap <leader><UP> <C-w>-
nnoremap <leader><DOWN> <C-w>+
nnoremap <leader>b :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>l :lopen<CR><C-w>k
nnoremap <leader>q :lclose<CR>
nmap <leader>fw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>fd <Plug>(YCMFindSymbolInDocument)

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Populating list of issues. Useful for :lopen (:lclose)
let g:ycm_always_populate_location_list = 1
