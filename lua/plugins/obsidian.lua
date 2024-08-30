return {
  "epwalsh/obsidian.nvim",
  version = "*",
  event = "VeryLazy",
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    require('obsidian').setup({
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Personal",
        },
      },
      daily_notes = {
        folder = "Daily",
        template = "Daily Note"
      },
      templates = {
        subdir = "Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
      },
      -- How notes are named
      note_path_func = function(spec)
        local path = spec.dir / spec.title
        return path:with_suffix(".md")
      end,
    })
    vim.keymap.set("n", '<leader>oo', '<cmd>ObsidianOpen<CR>')
    vim.keymap.set("n", '<leader>on', '<cmd>ObsidianNew<CR>')
    vim.keymap.set("n", '<leader>of', '<cmd>ObsidianQuickSwitch<CR>')
    vim.keymap.set("n", '<leader>od', '<cmd>ObsidianToday<CR>')
    vim.keymap.set("n", '<leader>ot', '<cmd>ObsidianTemplate<CR>')
    vim.keymap.set("n", '<leader>ol', '<cmd>ObsidianTemplate Log Point.md<CR>')
  end
}
