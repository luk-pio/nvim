return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({})
    vim.cmd("colorscheme catppuccin-macchiato")
  end
}
