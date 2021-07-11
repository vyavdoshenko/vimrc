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
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'bronson/vim-trailing-whitespace'
Plug 'valloric/youcompleteme'
Plug 'Valloric/ListToggle'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'derekwyatt/vim-fswitch'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dyng/ctrlsf.vim'
" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'
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
" YCM plugin settings
" --------------------------------------------------
" Populating list of issues. Useful for :lopen (:lclose)
let g:ycm_always_populate_location_list = 1


" --------------------------------------------------
" ListToggle plugin settings
" --------------------------------------------------
let g:lt_height = 10

" --------------------------------------------------
" NERDTree plugin settings
" --------------------------------------------------
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeWinSize = 25        " Set panel width
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" --------------------------------------------------
" tagbar plugin settings
" --------------------------------------------------
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1


" **************************************************
" Known default mappings with Ctrl key
" **************************************************
" C-v      Enter visual mode for selection of BLOCKS
" C-r      Redo
" C-z      send vim to background (fg brings it to front again)
" C-ws     Split current window horizontally (alternative :split)
" C-wv     Split current window vertically (alternative :vsplit)
" C-ww     Jump to the next window
" C-wARROW Jump to window left/right/top/bottom (arrow keys) to the current
" C-w#<    Shrink/resize current window from the right by # (default 1)
" C-w#>    Increase/resize current window to the right by # (default 1)
" C-b      Move back one full screen (page up)
" C-f      Move forward one full screen (page down)
" C-d      Move forward 1/2 screen; half page down
" C-u      Move back (up) 1/2 screen; half page up
" C-n      Keyword completion
" --------------------------------------------------
" vim-fswitch plugin key mapping
" --------------------------------------------------
nnoremap <silent> <C-h> :FSHere<CR>
" --------------------------------------------------
" vim-trailing-whitespace plugin key mapping
" --------------------------------------------------
nnoremap <silent> <C-s> :FixWhitespace<CR>
" --------------------------------------------------
" tagbar key mapping
" --------------------------------------------------
nnoremap <silent> <C-t> :TagbarToggle<CR>
" --------------------------------------------------
" NERDTree key mapping
" --------------------------------------------------
nnoremap <silent> <C-x> :NERDTreeToggle<CR>
" --------------------------------------------------
" ListToggle key mapping
" --------------------------------------------------
let g:lt_location_list_toggle_map = '<silent> <C-l>'
let g:lt_quickfix_list_toggle_map = '<silent> <C-q>'
" --------------------------------------------------
" YCM plugin settings
" --------------------------------------------------
nmap <silent> <F8> :YcmForceCompileAndDiagnostics<CR>
nmap <silent> <F6> <Plug>(YCMFindSymbolInWorkspace)
nmap <silent> <F7> <Plug>(YCMFindSymbolInDocument)
" --------------------------------------------------
" Moving windows key mappings
" --------------------------------------------------
nnoremap <leader><RIGHT> <C-w><
nnoremap <leader><LEFT> <C-w>>
nnoremap <leader><UP> <C-w>-
nnoremap <leader><DOWN> <C-w>+
