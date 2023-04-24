vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


local api = require('nvim-tree.api')


vim.keymap.set('n', '<leader>fb', function() api.tree.open({find_file=true}) end)
vim.keymap.set('n', '<leader>fbt', api.tree.toggle)
