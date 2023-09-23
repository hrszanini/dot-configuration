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

	" LSP Config 
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/mason-lspconfig.nvim'

	" Debugger
	Plug 'mfussenegger/nvim-dap'
	Plug 'rcarriga/nvim-dap-ui'

	" Linter
	Plug 'mfussenegger/nvim-lint'
	
	" Formatter
	Plug 'mhartington/formatter.nvim'
	
	" Null LS
	Plug 'nvim-lua/plenary.nvim'
	Plug 'jose-elias-alvarez/null-ls.nvim'

	" Mason
	Plug 'williamboman/mason.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'

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
call plug#end()

" Color Theme
set background=dark
colorscheme gruvbox
" hi Normal guibg=NONE ctermbg=NONE
" hi NonText guibg=NONE ctermbg=NONE

" Leader Map
let mapleader = " "

" Shortcuts
nnoremap <silent>	<A-Left>	<Cmd>BufferPrevious<CR>
nnoremap <silent>   <A-Right>	<Cmd>BufferNext<CR>
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
nnoremap <silent>   <A-e>		<Cmd>enew<CR>

nnoremap <silent>	<leader>e	<Cmd>NvimTreeToggle<CR>

nnoremap			<leader>sf	<Cmd>Telescope find_files<cr>
nnoremap			<leader>sg	<Cmd>Telescope live_grep<cr>
nnoremap			<leader>sb	<Cmd>Telescope buffers<cr>
nnoremap			<leader>sh	<Cmd>Telescope help_tags<cr>
nnoremap			<Leader>sc	<Cmd>lua require'telescope.builtin'.treesitter()<CR>
nnoremap			<Leader>sw	<Cmd>lua require'telescope.builtin'.lsp_references()<CR>
nnoremap			<Leader>st	<Cmd>lua require'telescope.builtin'.builtin()<CR>

nnoremap <silent>	<leader>gg	:LazyGit<CR>
nnoremap			<leader>m	:Mason<CR>
nnoremap			<leader>q	:q<CR>
nnoremap			<leader>w	:call SaveFile()<CR>

function! SaveFile()
	let currentBufferName = bufname('%')

    if empty(currentBufferName)
        let newBufferName = input('Digite um nome de arquivo: ')
        if empty(newBufferName)
            echo "Nome de arquivo inválido."
            return
        else
            execute 'w ' . newBufferName
        endif
    else
        execute 'w ' . currentBufferName
    endif

    echo "Arquivo salvo: " . bufname('%')
endfunction

