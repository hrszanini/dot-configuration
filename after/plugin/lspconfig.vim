lua << END

require'lspconfig'.pyright.setup{
	on_attach = function() 
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
	vim.keymap.set("n", "<leader>d<Right>", vim.diagnostic.goto_next, {buffer=0})
	vim.keymap.set("n", "<leader>d<Left>", vim.diagnostic.goto_prev, {buffer=0})
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
	end,
}

END
