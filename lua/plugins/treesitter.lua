return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "javascript", "typescript", "html", "python", "rust", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "graphql", "bash", "dockerfile" },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autotag = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Folding
    vim.opt.foldlevel = 20
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  end
}
