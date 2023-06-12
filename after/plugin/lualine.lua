require("lualine").setup({
	options = { theme = "everforest" },
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
