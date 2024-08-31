return {
  'mfussenegger/nvim-dap-python',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function(_, opts)
    local mason_registry = require 'mason-registry'
    local install_path = mason_registry.get_package('debugpy'):get_install_path()
    require('dap-python').setup(install_path)
  end,
}
