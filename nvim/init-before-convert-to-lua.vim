:set nocompatible            " disable compatiblity to old-time vi
:set showmatch               " show matching brackets
:set ignorecase              " case insensitive matching
" set mouse=v                 " middle-click paste with mouse
:set hlsearch                " highlight search results
:set autoindent              " indent a new line the same amount as the line just typed
:set number                  " add line numbers
:set wildmode=longest,list   " get bash-like tab completions
:set cc=120                  " set colour columns for good coding style
:filetype plugin indent on   " allows auto-indenting depending on file type
:set tabstop=4               " number of columns occupied by a tab character
:set expandtab               " convert tabs to white space
:set shiftwidth=4            " width for autoindents
:set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right things

call plug#begin()

Plug 'http://github.com/tpope/vim-surround'             " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree'            " NerdTree
Plug 'https://github.com/tpope/vim-commentary'          " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline'       " Status bar
Plug 'https://github.com/ap/vim-css-color'              " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons'        " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'          " Vim Terminal
Plug 'https://github.com/preservim/tagbar'              " Tagbar for code navigation
Plug 'https://github.com/mg979/vim-visual-multi'        " CTRL + N, CTRL-Down/CTRL-Up Shift-Arrows, n/N, [/], q, Q
Plug 'https://github.com/applejwjcat/dashboard-nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/neovim/nvim-lspconfig'

" Plug 'https://github.com/glepnir/dashboard-nvim'        " Fancy Fastest Async Start Screen Plugin of Neovim
" Plug 'https://github.com/neoclide/coc.nvim'             " Auto Completion
" Plug 'https://github.com/terryma/vim-multiple-cursors'  " CTRL + N for multiple cursors --- !!! deprecated

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme jellybeans

" air-line
let g:airline_powerline_fonts = 1
let g:Terminal_PyVersion = 3
let g:VM_default_mappings = 1

command! Scratch lua require'my-sandbox-tools'.makeScratch()

