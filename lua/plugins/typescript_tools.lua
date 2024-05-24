return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig", "dmmulroy/ts-error-translator.nvim" },
	config = function()
		vim.keymap.set("n", "<leader>ti", "<cmd>TSToolsOrganizeImports<CR>")
		vim.keymap.set("n", "<leader>tu", "<cmd>TSToolsRemoveUnused<CR>")
		vim.keymap.set("n", "<leader>tm", "<cmd>TSToolsAddMissingImports<CR>")
		vim.keymap.set("n", "<leader>ta", "<cmd>TSToolsFixAll<CR>")
		vim.keymap.set("n", "<leader>tr", "<cmd>TSToolsRenameFile<CR>")
		vim.keymap.set("n", "<leader>tf", "<cmd>TSToolsFileReferences<CR>")
	end,
}
