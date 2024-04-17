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
nnoremap <silent>   <F2>		<Cmd>enew<CR>

nnoremap <silent>	<leader>u	<Cmd>UndotreeToggle<CR>

nnoremap <silent>	<leader>gg		:LazyGit<CR>
nnoremap			<leader>q		:q<CR>
nnoremap			<leader><Esc>	:qall!
nnoremap <silent>	<leader>w		:call SaveFile()<CR>

nnoremap <silent>	<leader>e	<Cmd>NvimTreeToggle<CR>

" Map Functions
function! SaveFile()
	let currentBufferName = bufname('%')
	if empty(currentBufferName)
		let newBufferName = input('Digite um nome de arquivo: ')
		if empty(newBufferName)
			echo "Nome de arquivo inválido."
			return
		else
			execute 'w ' . newBufferName
			redraw!
		endif
	else
		execute 'w ' . currentBufferName
		redraw!
	endif
	echo "Arquivo salvo: " . bufname('%')
	redraw!
endfunction

