" ~/.config/nvim/init.vim
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
set relativenumber	    " add relative numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" 
" 
call plug#begin("~/.vim/plugged")
"
" Plugin Section
Plug 'dracula/vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " file explorer
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify' " fancy start screen greeter
Plug 'neoclide/coc.nvim', {'branch': 'release'} " blazing fast completions
Plug 'nvim-lualine/lualine.nvim' " Status line plugin
Plug 'kyazdani42/nvim-web-devicons'


 "
 " main one
 Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
 "
" 9000+ Snippets
 Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
call plug#end()
" 
" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
"
" colorscheme evening
colorscheme dracula " open new split panes to right and below
" set splitright
" set splitbelow
"
"
" file explorer mapping
nnoremap <C-t> :CHADopen<cr>
