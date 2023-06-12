vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	sync_root_with_cwd = true,
	view = {
		number = true,
		relativenumber = true,
	},
	renderer = {
		group_empty = true,
		indent_width = 2,
		indent_markers = { enable = true },
	},
	filters = {
		dotfiles = false,
	},
  git = {
    ignore = false
  }
})

local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>fb", function()
	api.tree.open({ find_file = true })
end)
vim.keymap.set("n", "<leader>fbt", api.tree.toggle)
