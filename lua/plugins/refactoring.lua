return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()
		vim.keymap.set("x", "<leader>re", ":Refactor extract<CR>")
		vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file<CR>")
		vim.keymap.set("x", "<leader>rv", ":Refactor extract_var<CR>")
		vim.keymap.set("x", "<leader>rb", ":Refactor extract_block<CR>")
		vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var<CR>")
	end,
}
