" My .vimrc configuration

set nocompatible
filetype plugin on

"------------------- Behaviour -------------------
set noswapfile
set nrformats-=octal    " Avoid <C-a> and <C-x> to treat numbers as octals.

"------------------- UI -------------------
set cursorline
set mouse=a
set noerrorbells
set nowrap
set number              " Show line number
set relativenumber
set ruler               " Show cursor position in the bottom
set scrolloff=10        " Leave this number of lines visible above/below the cursor when scrolling top/bottom of the window
set signcolumn=yes
set smartindent
"set spell               " Enable spell checking
syntax on               " Syntax
set wildmenu
set wildoptions=pum,tagfile

"------------------- Tabulation -------------------
set expandtab           " Uses spaces instead of tab
set shiftwidth=4        " Number of spaces when indenting with shift + > and shift + <
set softtabstop=4
set tabstop=4           " Number of spaces that a <Tab> in the file counts for

"------------------- Searching -------------------
set hlsearch            " Highlight all search matches
set ignorecase          " Ignore case when searching
set incsearch           " With incremental search, does not wait to Enter to be pressed
set smartcase           " All lower case: case insensitive search.  One capital or more will assume case sensitive search

"------------------- Plugins -------------------
call plug#begin()

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'

call plug#end()

"------------------- Mappings -------------------

let mapleader = " "

"---- Normal mode mappings ----
nnoremap Y y$

" When doing J keep the cursor in place
nnoremap J mzJ`z

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab> <C-w>w

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

"---- Visual mode mappings ----

" Stay in indent mode
vnoremap < <gv 
vnoremap > >gv 

" Move up and down
vnoremap J :move '>+1<CR>gv=gv
vnoremap K :move '<-2<CR>gv=gv


let g:highlightedyank_highlight_duration = 250
