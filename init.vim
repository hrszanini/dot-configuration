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

	" Code Highligth
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	
	" Explorer Tree
	Plug 'nvim-tree/nvim-tree.lua'

	" Code Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
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

call plug#end()

" Color Theme
set background=dark
colorscheme jellybeans
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE

" Leader Map
let mapleader = " "

" Shortcuts
nnoremap <silent>	<A-,>		<Cmd>BufferPrevious<CR>
nnoremap <silent>   <A-.>		<Cmd>BufferNext<CR>
nnoremap <silent>   <A-q>		<Cmd>BufferClose<CR>
nnoremap <silent>   <A-s-q>		<Cmd>BufferRestore<CR>
nnoremap <silent>	<A-1>		<Cmd>BufferGoto 1<CR>
nnoremap <silent>   <A-2>		<Cmd>BufferGoto 2<CR>
nnoremap <silent>   <A-3>		<Cmd>BufferGoto 3<CR>
nnoremap <silent>	<A-4>		<Cmd>BufferGoto 4<CR>
nnoremap <silent>   <A-5>		<Cmd>BufferGoto 5<CR>
nnoremap <silent>   <A-6>		<Cmd>BufferGoto 6<CR>
nnoremap <silent>   <A-7>		<Cmd>BufferGoto 7<CR>
nnoremap <silent>   <A-8>		<Cmd>BufferGoto 8<CR>
nnoremap <silent>   <A-9>		<Cmd>BufferGoto 9<CR>
nnoremap <silent>   <A-0>		<Cmd>BufferLast<CR>

nnoremap <silent>	<A-e>		<Cmd>NvimTreeToggle<CR>

nnoremap			<leader>ff	<Cmd>Telescope find_files<cr>
nnoremap			<leader>fg	<Cmd>Telescope live_grep<cr>
nnoremap			<leader>fb	<Cmd>Telescope buffers<cr>
nnoremap			<leader>fh	<Cmd>Telescope help_tags<cr>

nnoremap <silent>	<leader>gg	:LazyGit<CR>

nnoremap			<leader>w	:w<CR>
nnoremap			<leader>q	:q<CR>

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
