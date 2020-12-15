let mapleader = ","
set encoding=utf-8
set number relativenumber
set title
set cursorline
set scrolloff=8
set noshowmode
set background=dark
set laststatus=2
set tabstop=2
" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox' 
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'herringtondarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
call plug#end()

" cosas que he visto
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" let g:ultisnipssnippetdirectories=[$home.'/.config/nvim/ultisnips']
let g:ultisnipsexpandtrigger="<tab>"
let g:ultisnipsjumpforwardtrigger="<tab>"
let g:ultisnipsjumpbackwardtrigger="<s-tab>"

" deoplete
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1


" esquema
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:deoplete#enable_at_startup = 1
imap kk <esc>
map <leader>ww <c-w>ww
map <leader>d lx
nmap <leader>w :w<cr>
highlight normal ctermbg=none
" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" rainbow brackets
let g:rainbow_active = 1

"javascript
autocmd bufread *.js set filetype=javascript.jsx
autocmd bufread *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

" activar deoplete al iniciar neovim
let g:supertabdefaultcompletiontype = '<c-n>'
" cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopletecompletedoneau
  autocmd!
 autocmd completedone * silent! pclose!
augroup end

"" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital lett
