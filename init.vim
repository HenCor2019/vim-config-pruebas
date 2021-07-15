let mapleader = ","
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let &viminfofile = expand('$XDG_DATA_HOME/nvim/shada/main.shada')
set encoding=utf-8
set number relativenumber
syntax on
set scrolloff=8
set title
set spelllang=en
set cursorline
set noshowmode
set autoindent
set laststatus=2
set nolist
set ruler
set fileformat=unix
set tabstop=1 softtabstop=0 expandtab shiftwidth=2 smarttab
set hlsearch         " highlight matches
set incsearch        " incremental searching
set ignorecase       " searches are case insensitive... 
set smartcase        " ... unless they contain at least one capital lett 
filetype plugin indent on

source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/maps/maps.vim
source ~/.config/nvim/plugin-config/plugin-config.vim


