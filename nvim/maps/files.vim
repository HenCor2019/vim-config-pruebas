" The primeagen channel
vnoremap J :m  '>+1<CR>gv=gv
vnoremap K :m  '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" refrescar para nuevos archivos
map <leader>R :NERDTreeRefreshRoot<CR>

