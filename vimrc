set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

set backspace=2 " make backspace work like most other apps
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set number
set ruler

set encoding=utf-8
set mouse=a

set nrformats=
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set shiftround
set laststatus=2
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

set gfn=Menlo:h13b

set nolist

set go=

set background=light

syntax enable
colorscheme solarized

" Some overrides for the colorschemes
" GRB: Put useful info in status line
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

hi Search guifg=NONE gui=underline

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

map <leader>t :!rspec <C-R>="spec/".substitute(expand("%:r"), "app/", "", "")."_spec.rb"<CR><LF>
map <leader>T :!rspec %<Return>

