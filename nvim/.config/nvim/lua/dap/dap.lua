return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'williamboman/mason.nvim',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    dapui.setup()

    vim.keymap.set('n', '<Leader>b', function()
      require('dap').toggle_breakpoint()
    end)
    vim.keymap.set('n', '<F5>', function()
      require('dap').continue()
    end)
    vim.keymap.set('n', '<F6>', function()
      require('dap').step_over()
    end)
    vim.keymap.set('n', '<F7>', function()
      require('dap').step_into()
    end)
    vim.keymap.set('n', '<F8>', function()
      require('dap').step_out()
    end)

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
