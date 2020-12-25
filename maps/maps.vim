" acciones de definiciones
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" opciones de gruvbox que ni idea
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?


" para los files
nmap <leader>fi :Files<CR>

" para git
nmap <leader>G :G<CR>
nmap <leader>ga :Gwrite<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gl :Gpull<CR>
nmap <leader>grd :Gread<CR>
nmap <leader>gdf :SignifyToggleHighlight<CR>
nmap <leader>glog :Glog<CR>

" acciones de comodidad
imap kk <Esc> 
nmap <leader>ww <C-w>w 
nmap <leader>jj <C-w>j 
nmap <leader>kk <C-w>k 
nmap <leader>hh <C-w>h 
nmap <leader>ll <C-w>l 
nmap <leader>b <C-q> 

" accion de guardado
nmap <leader>w :w<CR>
nmap <leader>wq :wq<CR>
nmap <leader>wa :wa<CR>
nmap <leader>nq :q!<CR>

" para las pestañas
nmap <leader>tt :tabe 
nmap <leader>r :tabprevious<CR>
nmap <leader>l :tabNext<CR>
nmap <leader>x :tabclose<CR>

" para snippets
imap <C-l> <Plug>(coc-snippets-expand)

vmap <C-j> <Plug>(coc-snippets-select)
