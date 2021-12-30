call plug#begin('~/.local/share/nvim/plugged')

"Plug 'morhetz/gruvbox'
" Plug 'gruvbox-community/gruvbox'
" Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

" indentado
Plug 'ryanoasis/vim-devicons'

" autocompletado
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

" Plug 'honza/vim-snippets'
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



" vim-snippets
Plug 'L3MON4D3/LuaSnip'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

" sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'flowtype/vim-flow'

" IDE
Plug 'preservim/nerdcommenter'

" Escritura
Plug 'alvan/vim-closetag'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" eslint
" Plug 'dense-analysis/ale' -> lo siento muy lento

" multicursor
" Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


" para achivos
"Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
"Plug 'junegunn/fzf.vim'

" para vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Testing harpoon
Plug 'ThePrimeagen/harpoon'

call plug#end()

" lua require("hencor")

source ~/.config/nvim/plugins/eslint.vim
source ~/.config/nvim/plugins/git.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/status.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/onedark.vim
source ~/.config/nvim/plugins/multicursor.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/spell.vim

source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/lsp.vim
source ~/.config/nvim/plugins/harpoon.vim
source ~/.config/nvim/plugins/completition.vim

" source ~/.config/nvim/plugins/neoformat.vim
" source ~/.config/nvim/plugins/formatter.vim
" source ~/.config/nvim/plugins/gruvbox.vim
" source ~/.config/nvim/plugins/nord.vim
" source ~/.config/nvim/plugins/coc.vim
