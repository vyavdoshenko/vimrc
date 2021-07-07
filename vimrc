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
Plug 'preservim/tagbar'
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

" Moving windows key mappings
nnoremap <leader><RIGHT> <C-w><
nnoremap <leader><LEFT> <C-w>>
nnoremap <leader><UP> <C-w>-
nnoremap <leader><DOWN> <C-w>+


" ----- YCM plugin settings-----
nnoremap <leader>b :YcmForceCompileAndDiagnostics<CR>
" Find in workspace key mapping
nnoremap <leader>fw <Plug>(YCMFindSymbolInWorkspace)
" Find in current document key mapping
nnoremap <leader>fd <Plug>(YCMFindSymbolInDocument)
" Populating list of issues. Useful for :lopen (:lclose)
let g:ycm_always_populate_location_list = 1
nnoremap <leader>l :lopen<CR><C-w>k
nnoremap <leader>q :lclose<CR>


" ----- NERDTree plugin settings -----
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeWinSize = 25        " Set panel width to 31 columns
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" NERDTree toggle keys mapping
nnoremap <leader>n :NERDTreeToggle<CR>


" ----- tagbar plugin setting -----
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nnoremap <leader>t :TagbarToggle<CR>
