function! neoformat#formatters#javascript#enabled() abort
    return ['jsbeautify', 'standard', 'semistandard', 'prettier', 'prettydiff', 'clangformat', 'esformatter', 'prettiereslint', 'eslint_d', 'denofmt']
endfunction

function! neoformat#formatters#javascript#standard() abort
    return {
        \ 'exe': 'standard',
        \ 'args': ['-s 4', '-q'],
        \ 'stdin': 1
        \ }
endfunction

function! neoformat#formatters#javascript#prettier() abort
  return {'exe': 'prettier' }
endfunction


