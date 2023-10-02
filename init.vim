" NeoVim Config
filetype plugin on

set updatetime=300
set signcolumn=yes

set number                  " add line numbers
set rnu						" relative line numbers

set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch				" highlight search 
set incsearch				" incremental search

set tabstop=4				" number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set wildmode=longest,list   " get bash-like tab completions

set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
filetype plugin indent on   " allow auto-indenting depending on file type

set cc=120                  " set an 80 column border for good coding style
set cursorline              " highlight current cursorline
syntax on                   " syntax highlighting

set mouse=a                 " enable mouse click
set mouse=v					" middle-click paste with 

set clipboard=unnamedplus   " using system clipboard

set ttyfast                 " Speed up scrolling in Vim

set nocompatible            " disable compatibility to old-time vi

"Plugins
call plug#begin()

" Themes
Plug 'dracula/vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

" Code Highligth
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Explorer Tree
Plug 'nvim-tree/nvim-tree.lua'

" Git UI
Plug 'kdheepak/lazygit.nvim'

" Tabs
Plug 'lewis6991/gitsigns.nvim'
Plug 'romgrk/barbar.nvim'

" File/String/Tag Search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

" Status Line
Plug 'nvim-lualine/lualine.nvim'

" Icons support for others Plugins
Plug 'nvim-tree/nvim-web-devicons' 

" Start Screen
Plug 'mhinz/vim-startify'

" Undo Tree
Plug 'mbbill/undotree'

" LSP
Plug 'neovim/nvim-lspconfig'

" Code Compleation
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Code Snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Ident Blankline
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()
