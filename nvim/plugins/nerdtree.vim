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

let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!    
augroup END


nmap <leader><Space>p :call RunPython()<CR>
nmap <leader><Space>j :call RunJS()<CR>
nmap <leader><Space><Space> :call RunCPP()<CR>

let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

:function RunPython()
:write
:!python3 %
endfunction

:function RunJS()
:write
:!node %
:endfunction

:function RunCPP()
:write
:!g++ -o file % && ./file
:endfunction
