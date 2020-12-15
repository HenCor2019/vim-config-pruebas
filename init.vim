let mapleader = ","
set encoding=utf-8
set number relativenumber
syntax on
set scrolloff=7
set title
set cursorline
set noshowmode
set autoindent
set laststatus=2
set nolist
set ruler
set fileformat=unix
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set hlsearch         " highlight matches
set incsearch        " incremental searching
set ignorecase       " searches are case insensitive... 
set smartcase        " ... unless they contain at least one capital lett 
filetype plugin indent on

" Cargar fuente powerline y simbolos
let g:airline_powerline_fonts = 1

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

" indentado
Plug 'Yggdroot/indentLine'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

" escritura
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" multicursor 
Plug 'terryma/vim-multiple-cursors'

" para achivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

" para vim
Plug 'tpope/vim-fugitive'

call plug#end()


" iniciando en todos el autocompletado
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" background
colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='soft'

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \},
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \},
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \},
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \},
      \ 'colorscheme': 'wombat',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \}
      \}

"para lo de emmet
let g:user_emmet_leader_key=','

" cosas para el autocompletado
" Activar deoplete al iniciar Neovim
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1

" configuraciones de indentado
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Cerrar automaticamente la ventana de vista previa (donde se muestra
" documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!    
augroup END

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


" acciones de definiciones
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" opciones de gruvbox que ni idea
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?


" para los files
nmap <leader>fi :Files<CR>

" para vim
nmap <leader>gs :G<CR>
nmap <leader>ga :Gwrite<CR>

" acciones de comodidad
imap kk <Esc> 
nmap <leader>ww <C-w>w 
nmap <leader>jj <C-w>j 
nmap <leader>kk <C-w>k 
nmap <leader>hh <C-w>h 
nmap <leader>ll <C-w>l 
nmap <leader>b <C-q> 

" accion de guardado
nmap <leader>w :w<CR>
nmap <leader>wq :wq<CR>
nmap <leader>nq :q!<CR>

" para las pestañas
nmap <leader>tt :tabe
nmap <leader>r :tabprevius<CR>
nmap <leader>l :tabnext<CR>

" abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" copiar directamente al portapapeles
vmap <C-c> "+yi

highlight Normal ctermbg=NONE

let g:airline#extensions#tabline#enable = 1 " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

" Acciones de nerdtree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript



