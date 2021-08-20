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

" configuraciones de indentado
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Cerrar automaticamente la ventana de vista previa (donde se muestra
" documentación, si existe)

augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!    
augroup END


" correr archivos compilados
nmap <F4> :call RunJS()<CR>
nmap <F3> :call RunPython()<CR>

" Acciones de nerdtree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

:function RunPython()
:write
:!python3 %
endfunction

:function RunJS()
:write
:!node %
:endfunction
