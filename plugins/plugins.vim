call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

" indentado
Plug 'Yggdroot/indentLine'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

" IDE
Plug 'preservim/nerdcommenter'

" Escritura
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" multicursor 
Plug 'terryma/vim-multiple-cursors'

" para achivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

" para vim
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

call plug#end()
