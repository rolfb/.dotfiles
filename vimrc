set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

let g:CommandTMaxHeight=20

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set number
set ruler

set encoding=utf-8

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set shiftround

set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
nmap <silent> ,/ :nohlsearch<CR> "/
set scrolloff=3

set history=1000
set undolevels=1000

set visualbell
set noerrorbells

set nobackup
set noswapfile

set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

filetype plugin indent on

set gfn=Anonymous\ Pro:h14
set ft=ruby

set nolist

set go=

if has('gui_running')
    set background=light
else
    set background=dark
endif


if &t_Co >= 256 || has("gui_running")
   colorscheme solarized
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif