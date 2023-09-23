lua << END
require('lint').linters_by_ft = {
  python = {'pylint',}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
END
