return {
  'glepnir/template.nvim',
  cmd = { 'Template', 'TemProject' },
  config = function()
    require('template').setup {
      temp_dir = '~/Modelos',
    }

    local telescope = require 'telescope'
    telescope.load_extension 'find_template'
  end,
}
