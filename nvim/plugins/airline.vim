let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enable = 1 " Mostrar buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], ['gitbranch', 'readonly','relativepath', 'modified']]
      \},
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \},
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'aiinactive'
      \},
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \},
      \ 'colorscheme': 'onedark',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \}
      \}

