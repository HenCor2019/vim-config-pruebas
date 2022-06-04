scriptencoding utf-8

nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>
vnoremap J :m  '>+1<CR>gv=gv
vnoremap K :m  '<-2<CR>gv=gv

vnoremap <leader>p "_dP

nnoremap Y y$

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap $ $<c-g>u
inoremap > ><c-g>u

vnoremap < <gv
vnoremap > >gv

inoremap ii <esc>
vnoremap <leader>s :!sort<CR>

" Make windows to be basically the same size
nnoremap <leader>= <C-w>=

nnoremap ss :split<Return><C-w>w
nnoremap sv :vsplit<Return><C-w>w
nnoremap <Space> <C-w>w

nnoremap <leader>j :cnext<CR>
nnoremap <leader>k :cprev<CR>

nnoremap <leader>i :lnext<CR>
nnoremap <leader>o :lprev<CR>

nnoremap <leader>bd :bd!<CR>


nnoremap <expr> <leader>dp ":saveas " .  expand('%')
nnoremap <leader>w :w<CR>
nnoremap <leader>nq :q!<CR>

" For moving quickly up and down,
" Goes to the first line above/below that isn't whitespace
" Thanks to: http://vi.stackexchange.com/a/213
nnoremap <silent> gj :let _=&lazyredraw<CR>:set lazyredraw<CR>/\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>:let &lazyredraw=_<CR>
nnoremap <silent> gk :let _=&lazyredraw<CR>:set lazyredraw<CR>?\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>:let &lazyredraw=_<CR>

" Run the last command
" nnoremap <leader><leader>c :<up>


if has('nvim')
    " Make esc leave terminal mode
    tnoremap <leader><Esc> <C-\><C-n>
    tnoremap <Esc><Esc> <C-\><C-n>

    " Easy moving between the buffers
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l

    " Try and make sure to not mangle space items
    tnoremap <S-Space> <Space>
    tnoremap <C-Space> <Space>
endif
