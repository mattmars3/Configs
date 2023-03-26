""""""""""""""""""""""""""""""""""""""""""""""""""""
"  __  __       _   _   __  __                _
" |  \/  | __ _| |_| |_|  \/  | __ _ _ __ ___(_) ___ ___
" | |\/| |/ _` | __| __| |\/| |/ _` | '__/ __| |/ __/ _ \
" | |  | | (_| | |_| |_| |  | | (_| | |  \__ | | (_| (_) |
" |_|  |_|\__,_|\__|\__|_|  |_|\__,_|_|  |___|_|\___\___/
"
""""""""""""""""""""""""""""""""""""""""""""""""""""
" V I M  P L U G I N S
""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" File Searcher
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'honza/vim-snippets'

" Commenting
Plug 'tpope/vim-commentary'

" Fancy start screen for vim
Plug 'mhinz/vim-startify'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" AST syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git support
Plug 'tpope/vim-fugitive'

" Parenthesis auto-complete
Plug 'jiangmiao/auto-pairs'

" Focus assistance
Plug 'junegunn/goyo.vim'

" TOML Support
Plug 'cespare/vim-toml'

" Javascript Support
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'

" Copy paste to system clipboard
Plug 'christoomey/vim-system-copy'

" Bottom line
Plug 'itchyny/lightline.vim'

Plug 'kyazdani42/nvim-web-devicons'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Colorschemes
Plug 'dracula/vim'
Plug 'FrenzyExists/aquarium-vim'

Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'gosukiwi/vim-atom-dark'
Plug 'jacoborus/tender.vim'
Plug 'kyoz/purify'

Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme dracula

let g:lightline = {'colorscheme' : 'dracula'}
""""""""""""""""""""""""""""""""""""""""""""""""""""
" B A S I C   S E T U P
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set clipboard+=unnamedplus


""""""""""""""""""""""""""""""""""""""""""""""""""""
"  T R E E S I T T E R
""""""""""""""""""""""""""""""""""""""""""""""""""""
" lua require('/home/matt/.config/nvim/treesitter')
luafile /home/matt/.config/nvim/treesitter.lua

"
""""""""""""""""""""""""""""""""""""""""""""""""""""
"  C O C    O P T I O N S 
""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <tab> for trigger completion and navigate to the next complete item

""""""""""""""""""""""""""""""""""""""""""""""""""""
"   K e y b i n d i n g s
""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "
" Leader t for toggling nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>

nnoremap <leader>cc

""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Telescope Finder 
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
