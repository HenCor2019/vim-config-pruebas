call plug#begin('~/.local/share/nvim/plugged')

"Plug 'morhetz/gruvbox'
" Plug 'gruvbox-community/gruvbox'
" Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

" Neovim Tree shitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'


" indentado
"Plug 'Yggdroot/indentLine'
"Plug 'ryanoasis/vim-devicons'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'honza/vim-snippets'
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'


" vim-snippets
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

" sintaxis
" Plug 'sheerun/vim-polyglot'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'flowtype/vim-flow'

" IDE
Plug 'preservim/nerdcommenter'

" Escritura
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
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
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


" Tresiter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Format code
" Plug 'sbdchd/neoformat'
" Plug 'mhartington/formatter.nvim'

call plug#end()

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/eslint.vim
source ~/.config/nvim/plugins/git.vim
" source ~/.config/nvim/plugins/neoformat.vim
" source ~/.config/nvim/plugins/formatter.vim
" source ~/.config/nvim/plugins/gruvbox.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/onedark.vim
" source ~/.config/nvim/plugins/lsp.vim
source ~/.config/nvim/plugins/coc.vim
" source ~/.config/nvim/plugins/nord.vim
source ~/.config/nvim/plugins/multicursor.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/spell.vim
