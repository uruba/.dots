" Plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

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
