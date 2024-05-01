return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = { theme = "auto" },
      extensions = { "toggleterm", "nvim-tree" },
      sections = {
        lualine_b = {
          { "branch", "diff", "diagnostics" },
        },
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = { "encoding", "filetype" },
      },
    })
  end
}
