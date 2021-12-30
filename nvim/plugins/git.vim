nmap <leader>gs :G<CR>
nmap <leader>ga :Gwrite<CR>
nmap <leader>grd :Gread<CR>
nmap <leader>gdf :SignifyToggleHighlight<CR>
nmap <leader>glog :Glog<CR>
nmap <leader>gch :Git ch 
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

" SEE STAGED OR COMMITED FILES
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'✹',
      \ 'Staged'    :'✚',
      \ 'Untracked' :'✭',
      \ 'Renamed'   :'➜',
      \ 'Unmerged'  :'═',
      \ 'Deleted'   :'✖',
      \ 'Dirty'     :'✗',
      \ 'Ignored'   :'☒',
      \ 'Clean'     :'✔︎',
      \ 'Unknown'   :'?',
      \}

