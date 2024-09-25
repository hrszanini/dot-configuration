return {
  'mfussenegger/nvim-dap-python',
  dependencies = {
    'mfussenegger/nvim-dap',
    'williamboman/mason.nvim',
  },
  config = function(_, opts)
    local mason_registry = require 'mason-registry'

    if not mason_registry.is_installed 'pyright' then
      return
    end

    local install_path = mason_registry.get_package('pyright'):get_install_path()
    require('dap-python').setup(install_path)
  end,
}
