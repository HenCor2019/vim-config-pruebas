" The primeagen channel
nnoremap Y y$
vnoremap J :m  '>+1<CR>gv=gv
vnoremap K :m  '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap n nzzzv<CR>
nnoremap N Nzzzv<CR>
inoremap $ $<c-g>u
inoremap > ><c-g>u

vnoremap < <gv
vnoremap > >gv
