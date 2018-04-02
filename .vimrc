set encoding=UTF-8

set nobackup
set noswapfile

set ic
set hls

set ruler

set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set si

set cursorline
set showmode
set number

syntax enable
colorscheme monokai

call plug#begin('~/.vim/plugins')
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
let g:ale_linters = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '▶'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'

Plug 'powerline/powerline'
Plug 'sbdchd/neoformat'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

autocmd FileType java setlocal omnifunc=javacomplete#Complete
