" acciones de comodidad
nmap <leader>nn <C-w>w
nmap <leader>qq <C-w>k
nmap <leader>ss <C-w>j
nmap <leader>aa <C-w>h
nmap <leader>dd <C-w>l
imap ii <Esc>

nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

nnoremap n nzzzv
nnoremap N nzzzv
nnoremap J mzJ`z

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nmap <Space> <C-w>w
