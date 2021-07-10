" --------------------------------------------------
" General
" --------------------------------------------------
filetype plugin indent on    " Enable loading the indent file for specific file types
set nocompatible             " Make vim configuration no compatible with classical vi
set hidden                   " Enable switching buffers when changes are not saved
syntax enable                " Enable colors for different syntaxes
set history=1000             " Enlarge history list
set wildmenu                 " Convinient menubar above statusbar
set scrolloff=5              " A minimal number of screen lines to keep above and below the cursor
set mouse=a                  " Enable mouse drag on window splits
set number                   " Precede each line with its line number


" --------------------------------------------------
" Splits
" --------------------------------------------------
set splitbelow               " Always split below
set splitright               " Always split right


" --------------------------------------------------
" Encoding
" --------------------------------------------------
scriptencoding utf-8
set encoding=utf-8


" --------------------------------------------------
" Indent
" --------------------------------------------------
set smartindent               " Do smart auto indenting when starting a new line
set copyindent                " Copy the structure of the existing lines indent when autoindenting a new line
set autoindent                " Copy indent from the current line when starting a new line


" --------------------------------------------------
" Tabs
" --------------------------------------------------
set smarttab
set tabstop=4                " How many columns of whitespace a <Tab> is worth
set shiftwidth=4             " How many columns of whitespace a 'level of indentation' is worth
set expandtab                " Use spaces when tabbing
set softtabstop=4            " Number of spaces that a <Tab> counts for while performing editing operations


" --------------------------------------------------
" Searching
" --------------------------------------------------
set ignorecase               " Ignoring case in a pattern
set smartcase                " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch                " Enable incremental search


" --------------------------------------------------
" Plugins
" --------------------------------------------------
set rtp +=~/.vim
call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'valloric/youcompleteme'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'derekwyatt/vim-fswitch'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dyng/ctrlsf.vim'
call plug#end()


" --------------------------------------------------
" Colorsheme settings
" --------------------------------------------------
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty


" --------------------------------------------------
" lightline plugin settings
" --------------------------------------------------
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode


" --------------------------------------------------
" lightline & vim_monokai_tasty integration
" --------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'monokai_tasty',
      \ }


" --------------------------------------------------
" Moving windows key mappings
" --------------------------------------------------
nnoremap <leader><RIGHT> <C-w><
nnoremap <leader><LEFT> <C-w>>
nnoremap <leader><UP> <C-w>-
nnoremap <leader><DOWN> <C-w>+


" --------------------------------------------------
" YCM plugin settings
" --------------------------------------------------
nnoremap <leader>b :YcmForceCompileAndDiagnostics<CR>
" Find in workspace key mapping
nnoremap <leader>fw <Plug>(YCMFindSymbolInWorkspace)
" Find in current document key mapping
nnoremap <leader>fd <Plug>(YCMFindSymbolInDocument)
" Populating list of issues. Useful for :lopen (:lclose)
let g:ycm_always_populate_location_list = 1
nnoremap <leader>l :lopen<CR><C-w>k
nnoremap <leader>q :lclose<CR>


" --------------------------------------------------
" NERDTree plugin settings
" --------------------------------------------------
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeWinSize = 25        " Set panel width
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
nnoremap <leader>n :NERDTreeToggle<CR>


" --------------------------------------------------
" tagbar plugin settings
" --------------------------------------------------
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nnoremap <leader>t :TagbarToggle<CR>


" --------------------------------------------------
" auto-pairs plugin settings
" --------------------------------------------------
let g:AutoPairsShortcutToggle = '<leader>p'


" --------------------------------------------------
" Mapping to make vim-fswitch plugin make working
" --------------------------------------------------
nnoremap <leader>h :FSRight<CR>
nnoremap <leader>c :FSRight<CR>
