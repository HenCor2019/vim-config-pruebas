" Cargar fuente powerline y simbolos
let g:airline_powerline_fonts = 1

" iniciando en todos el autocompletado
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" background
colorscheme gruvbox
" colorscheme dracula

let g:airline_theme='gruvbox'
" let g:airline_theme='wombat'
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
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusUseNerdFonts = 1

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

" las extensiones globales
let g:coc_global_extensions = [ 'coc-css', 'coc-json', 'coc-snippets', 'coc-tsserver', 'coc-python' ]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


" vim cositas
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'✹',
      \ 'Staged'    :'✚',
      \ 'Untracked' :'✭',
      \ 'Renamed'   :'➜',
      \ 'Unmerged'  :'═',
      \ 'Deleted'   :'✖',
      \ 'Dirty'     :'✗',
      \ 'Ignored'   :'☒',
      \ 'Clean'     :'✔︎',
      \ 'Unknown'   :'?',
      \}

" copiar directamente al portapapeles
vmap <C-c> "+yi

" correr archivos compilados
nmap <leader>jx :!node %<CR>
nmap <F3> :call RunPython()<CR>

highlight Normal ctermbg=NONE

let g:airline#extensions#tabline#enable = 1 " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

" Acciones de nerdtree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

" configuraciones de prettier
let g:prettier#exec_cmd_path = "~/.config/nvim/prettier/.prettierrc.json"


nmap <leader>f :PrettierAsync<CR>
nmap <leader>p <Plug>(Prettier)

let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
" autocmd BufWrite *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd BufWrite *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html CocCommand prettier.formatFile

" alternativa
nmap <C-p> ggVG=<CR>

:function RunPython()
:write
:!python3 %
:endfunction

" code spell
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)


" snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
