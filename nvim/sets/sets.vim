set encoding=utf-8
set number relativenumber
syntax on
set scrolloff=8
set title
set spelllang=en
" set cursorline " With dracula schema look bad
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
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
filetype plugin indent on

" opciones de coc que ni idea pero recomiendan ponerlas
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

"Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c"
