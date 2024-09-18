return {
  'glepnir/template.nvim',
  cmd = { 'Template', 'TemProject' },
  config = function()
    require('template').setup {
      temp_dir = '~/Modelos',
    }

    local telescope = require 'telescope'
    telescope.load_extension 'find_template'

    vim.keymap.set('n', '<leader>T', ':Telescope find_template<CR>', { desc = '[S]earch [T]emplate' })
  end,
}
