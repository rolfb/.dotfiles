set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

" folds
let ruby_fold=1
set foldlevelstart=99

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

" Highlight characters in column >80
" set colorcolumn=80

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*/tmp/*

filetype plugin indent on

" set gfn="Consolas":h14

set list listchars=tab:»\ ,trail:·,nbsp:·

set go=

" set background=light

syntax enable
let g:solarized_termcolors=16
colorscheme Tomorrow-Night

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

"ruby
let ruby_no_expensive=1
"let g:ruby_path = system('rvm current')
let ruby_operators=1
let ruby_space_errors=1
map <leader>T :!rspec <C-R>="spec/".substitute(expand("%:r"), "app/", "", "")."_spec.rb"<CR><LF>
map <leader>t :!rspec %<Return>

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Gemfile.local,Rakefile,Thorfile,Guardfile,config.ru,*.prawn} set ft=ruby

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Add other ctags files
set tags +=gems.tags
set tags +=stdlib.tags

" vim-ruby-xmpfilter

nmap <buffer> <F5> <Plug>(xmpfilter-run)
xmap <buffer> <F5> <Plug>(xmpfilter-run)
imap <buffer> <F5> <Plug>(xmpfilter-run)

nmap <buffer> <F4> <Plug>(xmpfilter-mark)
xmap <buffer> <F4> <Plug>(xmpfilter-mark)
imap <buffer> <F4> <Plug>(xmpfilter-mark)

" syntax help

map <leader>i :echom synIDattr(synID(line("."),col("."),1),"name")<CR>

" Ctrlp
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -i -l --nocolor --hidden -g ""'
endif
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_lazy_update = 150 " ms
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.bundle$'
let g:ctrlp_max_depth = 10
let g:ctrlp_switch_buffer = 0
let g:ctrlp_mruf_relative = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'mixed']
