return function()
	-- Help
	vim.keymap.set("n", "gd", vim.lsp.buf.definition)
	vim.keymap.set("n", "<leader>gh", vim.lsp.buf.signature_help)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
	vim.keymap.set("n", "gu", require("telescope.builtin").lsp_references)
	vim.keymap.set("n", "gu", require("telescope.builtin").lsp_implementations)

	vim.keymap.set("n", "<leader>vw", vim.lsp.buf.workspace_symbol)
	vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename)

	-- Code Action
	-- vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action)
	-- vim.keymap.set("n", "gh", vim.lsp.buf.hover)

	-- Vim diagnostic
	vim.keymap.set("n", "<leader>se", "<cmd>Telescope diagnostics bufnr=0<CR>")
	vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev)
	vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next)
end
