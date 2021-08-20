highlight Normal ctermbg=NONE

" coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

