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

Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-surround'
Plug 'vim-test/vim-test'

call plug#end()

colorscheme gruvbox

"------------------- Mappings -------------------

let mapleader = " "

nnoremap <silent> <C-p> :FZF<CR>

" Insert mode mappings
inoremap jj <ESC>
inoremap jk <ESC>

" Vim test
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tT :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

