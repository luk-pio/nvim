return {
  "gbprod/substitute.nvim",
  config = function()
    local sub = require('substitute')
    sub.setup({
      highlight_substituted_text = {
        enabled = true,
        timer = 500,
      },
    })
    vim.keymap.set("n", "gr", sub.operator, { noremap = true })
    vim.keymap.set("n", "grr", sub.line, { noremap = true })
    vim.keymap.set("n", "gR", sub.eol, { noremap = true })
    vim.keymap.set("x", "gr", sub.visual, { noremap = true })
  end,
}
