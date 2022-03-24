call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'shaunsingh/nord.nvim'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'nvim-lualine/lualine.nvim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'mattn/emmet-vim'

" indentado
Plug 'ryanoasis/vim-devicons'
"Plug 'romgrk/barbar.nvim'
"Plug 'akinsho/bufferline.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" completion
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
Plug 'jose-elias-alvarez/null-ls.nvim'


" vim-snippets
Plug 'L3MON4D3/LuaSnip'

" sintaxis
"Plug 'sheerun/vim-polyglot'
" Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'

" IDE
Plug 'preservim/nerdcommenter'

" Escritura
"Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


" multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


" para vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Testing harpoon
Plug 'ThePrimeagen/harpoon'
Plug 'karb94/neoscroll.nvim'

call plug#end()

"source ~/.config/nvim/plugins/eslint.vim
source ~/.config/nvim/plugins/git.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/status.vim
"source ~/.config/nvim/plugins/dracula.vim
"source ~/.config/nvim/plugins/schemas/onedark.vim
source ~/.config/nvim/plugins/schemas/nord.vim
"source ~/.config/nvim/plugins/onehalf.vim
source ~/.config/nvim/plugins/multicursor.vim
source ~/.config/nvim/plugins/nerdtree.vim
"source ~/.config/nvim/plugins/emmet.vim

source ~/.config/nvim/plugins/lsp.vim
source ~/.config/nvim/plugins/neoscroll.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/harpoon.vim
source ~/.config/nvim/plugins/completition.vim
source ~/.config/nvim/plugins/tressiter.vim
"source ~/.config/nvim/plugins/buffline.vim
