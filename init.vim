"""""""""""""""""""""""""""""""""""""""
" V I M   P L U G					  "
"""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Basic Plugins
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/zen-mode.nvim'
Plug 'itchyny/lightline.vim'

" Color Schemes
Plug 'FrenzyExists/aquarium-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'

" Rust Plugins

" Java Plugins

call plug#end()

"""""""""""""""""""""""""""""""""""""""
" B A S I C    C O N F I G            "
"""""""""""""""""""""""""""""""""""""""
colorscheme aquarium
set nocompatible
syntax on
set number
set ruler
set encoding=utf-8
set shiftwidth=2
set tabstop=4

"""""""""""""""""""""""""""""""""""""""
" K E Y B I N D I N G S
"""""""""""""""""""""""""""""""""""""""
let mapleader = " "
" use tab for code completions with coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Toggle Zen Mode
noremap <leader>g :ZenMode<CR>
"""""""""""""""""""""""""""""""""""""""
" N E R D T r e e
"""""""""""""""""""""""""""""""""""""""
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
noremap <leader>t :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFocus<CR>

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }
