let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enable = 1 " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']]
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
      \   'gitbranch': 'fugitive#head'
      \},
      \ 'colorscheme': 'nord',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \}
      \}

