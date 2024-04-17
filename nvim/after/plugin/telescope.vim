lua << END
require('telescope').setup{
  defaults = {
  },
  pickers = {
	lsp_references = {
		theme = "ivy"
	},
	lsp_definitions = {
		theme = "ivy"
	},
	lsp_incoming_calls= {
		theme = "ivy"
	},
	lsp_outgoing_calls= {
		theme = "ivy"
	},
  },
  extensions = {
   
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gc', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', 'gC', builtin.lsp_outgoing_calls, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>dl', builtin.diagnostics, {})
END
