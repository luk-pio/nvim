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
    vim.keymap.set("n", "gr", sub.operator, { noremap = true, desc = "Substitute operator" })
    vim.keymap.set("n", "grr", sub.line, { noremap = true, desc = "Substitute line" })
    vim.keymap.set("n", "gR", sub.eol, { noremap = true, desc = "Substitute to end of line" })
    vim.keymap.set("x", "gr", sub.visual, { noremap = true, desc = "Substitute selection" })
  end,
}
