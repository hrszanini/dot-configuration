return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'AlexvZyl/nordic.nvim',
    'sainnhe/gruvbox-material',
    'rebelot/kanagawa.nvim',
  },
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'kanagawa-dragon'
    vim.cmd.hi 'Comment gui=none'
    --vim.cmd.hi 'Normal guibg=NONE ctermbg=NONE'

    require('lualine').setup {}
  end,
}
