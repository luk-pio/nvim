return {
	"folke/zen-mode.nvim",
	event = "VeryLazy",
	opts = {
		window = {
			backdrop = 1,
		},
		plugins = {
			gitsigns = { enabled = false },
			tmux = { enabled = false },
		},
	},
}
