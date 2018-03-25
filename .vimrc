set encoding=UTF-8
set number
syntax enable
colorscheme monokai

call plug#begin('~/.vim/plugins')
Plug 'powerline/powerline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()
