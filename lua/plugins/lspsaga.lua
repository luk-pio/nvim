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

		vim.keymap.set("n", "<leader>lh", "<cmd>Lspsaga hover_doc <CR>", { desc = "Hover documentation" })
		vim.keymap.set("n", "<leader>li", "<cmd>Lspsaga incoming_calls <CR>", { desc = "Show incoming calls" })
		vim.keymap.set("n", "<leader>lo", "<cmd>Lspsaga outgoing_calls <CR>", { desc = "Show outgoing calls" })
		vim.keymap.set("n", "<leader>.", "<cmd>Lspsaga code_action <CR>", { desc = "Code actions" })
		vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga peek_definition <CR>", { desc = "Peek definition" })
		vim.keymap.set("n", "<leader>lt", "<cmd>Lspsaga peek_type_definition <CR>", { desc = "Peek type definition" })
		vim.keymap.set("n", "gh", "<cmd>Lspsaga hover_doc <CR>", { desc = "Show hover documentation" })
		vim.keymap.set("n", "<leader>lf", "<cmd>Lspsaga finder <CR>", { desc = "LSP finder (references, definitions, etc.)" })
	end,
}
