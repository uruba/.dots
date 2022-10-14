" Plugins
call plug#begin('~/.vim/plugged')

" Sensible defaults
Plug 'tpope/vim-sensible'

" Startify
Plug 'mhinz/vim-startify'

" Theme
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'

" Surround
Plug 'tpope/vim-surround'

" Lightline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Distraction-free
Plug 'junegunn/goyo.vim'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'kevinoid/vim-jsonc'

" Color highlight
Plug 'ap/vim-css-color'

" Symlink
Plug 'aymericbeaumet/vim-symlink'

" Code completion
Plug 'neovim/nvim-lspconfig'

" Emmet
Plug 'mattn/emmet-vim'

" Debugging
Plug 'puremourning/vimspector'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Obsession
Plug 'tpope/vim-obsession'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" VimDevIcons
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" FZF
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Bufonly
Plug 'schickling/vim-bufonly'

" Lastplace
Plug 'farmergreg/vim-lastplace'

call plug#end()

syntax on

colorscheme onedark

set nocompatible

" .exrc
set exrc
set secure

" Mouse
set mouse=a
if !has('nvim')
    set ttymouse=sgr
endif

" .vimrc
nnoremap <M-e> :e ~/.vimrc<CR>
nnoremap <M-r> :so ~/.vimrc<CR>

" Indentation
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" Search
set hlsearch

" FZF
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Commands<CR>
nnoremap <leader>fg :GitFiles<CR>
nnoremap <leader>fhc :History:<CR>
nnoremap <leader>fhs :History/<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fm :Maps<CR>

" Startify
let g:startify_custom_header = ''
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

" Lightline
set laststatus=2
set cmdheight=2
set showtabline=2

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified', 'gitbranch'] ]
	\ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ]
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
    \   'gitbranch': 'FugitiveHead'
	\ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ }
	\ }

let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#clickable = 1024
let g:lightline.component_raw = {'buffers': 1}

" Buffers
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>cb :BufOnly<CR>

" Distraction-free
nnoremap <leader>g :Goyo<CR>

" Line numbers
set number
set relativenumber

" Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1024

" Backup
set nobackup
set nowritebackup

" updatetime
set updatetime=450

" ALE
let g:ale_disable_lsp = 1

" Debugging
let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>di <Plug>VimspectorBalloonEval
xmap <Leader>di <Plug>VimspectorBalloonEval
nmap <Leader>dr :VimspectorReset<CR>

" Tabs
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" Clipboard
vmap <Leader-C> "+y

set clipboard+=unnamedplus

" NERDTree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERTreeChDirMode = 2

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader><C-n> :NERDTreeToggleVCS<CR>
nnoremap <C-m> :NERDTreeFind<CR>
 
" Code completion
set hidden
set shortmess+=c
set signcolumn=yes
