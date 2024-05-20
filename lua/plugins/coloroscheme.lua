return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	name = "kanagawa",
	config = function()
		require("kanagawa").setup({})
		vim.cmd("colorscheme kanagawa")
	end,
}
