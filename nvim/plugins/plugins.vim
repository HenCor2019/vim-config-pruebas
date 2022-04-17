call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'shaunsingh/nord.nvim'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'feline-nvim/feline.nvim'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

 "indentado
Plug 'ryanoasis/vim-devicons'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'windwp/nvim-autopairs'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'jose-elias-alvarez/null-ls.nvim'

 "IDE
Plug 'preservim/nerdcommenter'

 "Escritura
Plug 'tpope/vim-surround'


 "multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


 "para vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

 "Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'


 "Testing harpoon
Plug 'ThePrimeagen/harpoon'
Plug 'karb94/neoscroll.nvim'

call plug#end()

source ~/.config/nvim/plugins/git.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/status.vim
source ~/.config/nvim/plugins/schemas/nord.vim
source ~/.config/nvim/plugins/multicursor.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/harpoon.vim

lua require('hencor.lsp')
" lua require('hencor.null-ls')
"lua require('hencor.neoscroll')
lua require('hencor.completition')
lua require('hencor.tressiter')
autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
