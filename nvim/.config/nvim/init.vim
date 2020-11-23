" Plugins
call plug#begin('~/.vim/plugged')

" Themes, visual elements
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

" Symlink
Plug 'aymericbeaumet/vim-symlink'

" Code completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Git
Plug 'tpope/vim-fugitive', { 'tag': 'v3.2' }
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on

colorscheme dracula

" Indentation
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" Lightline
set laststatus=2

" Line numbers
set number
set relativenumber

" Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1024
