" Cargar fuente powerline y simbolos
let g:airline_powerline_fonts = 1

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

" para nerdtree commenter
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"para lo de emmet
let g:user_emmet_leader_key=','

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

" next placeholder
let g:coc_snippets_next = '<c-j>'

" prev placeholder
let g:coc_snippets_prev = '<c-k>'

" abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" refrescar para nuevos archivos
map <leader>R :NERDTreeRefreshRoot<CR>

" copiar directamente al portapapeles
vmap <C-c> "+yi

" correr archivos compilados
nmap <leader>jx :!node %<CR>
nmap <leader>px :!python3 %<CR>

highlight Normal ctermbg=NONE

let g:airline#extensions#tabline#enable = 1 " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

" Acciones de nerdtree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript
