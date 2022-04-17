" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"nnoremap <leader>bb :Telescope file_browser<cr>
"nnoremap <leader>bc :Telescope file_browser_relative<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" Using Lua functions
nnoremap <C-Space> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>va :lua require('hencor.telescope').anime_selector()<CR>
nnoremap <leader>vrc <cmd>lua require('hencor.telescope').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('hencor.telescope').git_branches()<CR>
nnoremap <leader>fb :lua require('hencor.telescope').file_browser()<CR>
nnoremap <leader>fr :lua require('hencor.telescope').file_browser_relative()<CR>
