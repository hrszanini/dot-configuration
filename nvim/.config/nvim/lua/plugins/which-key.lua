return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    local wk = require 'which-key'

    wk.setup()

    wk.add {
      { '<leader>c', desc = '[C]ode' },
      { '<leader>s', desc = '[S]earch' },
      { '<leader>d', desc = '[D]ocument' },
      { '<leader>r', desc = '[R]ename' },
      { '<leader>w', desc = '[W]orkspace' },
      { '<leader>t', desc = '[T]oggle' },
      { '<leader>h', desc = 'Git [H]unk' },
      { '<leader>J', desc = '[J]ava Create Files' },
    }
  end,
}
