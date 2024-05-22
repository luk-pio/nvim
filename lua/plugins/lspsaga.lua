return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({
			ui = {
				code_action = "",
			},
		})

		vim.keymap.set("n", "<leader>lh", "<cmd>Lspsaga hover_doc <CR>")
		vim.keymap.set("n", "<leader>li", "<cmd>Lspsaga incoming_calls <CR>")
		vim.keymap.set("n", "<leader>lo", "<cmd>Lspsaga outgoing_calls <CR>")
		vim.keymap.set("n", "<leader>.", "<cmd>Lspsaga code_action <CR>")
		vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga peek_definition <CR>")
		vim.keymap.set("n", "<leader>lt", "<cmd>Lspsaga peek_type_definition <CR>")
		vim.keymap.set("n", "gh", "<cmd>Lspsaga hover_doc <CR>")
		vim.keymap.set("n", "<leader>lf", "<cmd>Lspsaga finder <CR>")
	end,
}
