return function()
	-- Help
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
	vim.keymap.set("n", "<leader>gh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
	vim.keymap.set("n", "gu", require("telescope.builtin").lsp_references, { desc = "Find references" })

	vim.keymap.set("n", "<leader>vw", vim.lsp.buf.workspace_symbol, { desc = "Workspace symbols" })
	vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, { desc = "Rename symbol" })

	-- Code Action
	-- vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action)
	-- vim.keymap.set("n", "gh", vim.lsp.buf.hover)

	-- Vim diagnostic
	vim.keymap.set("n", "<leader>se", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
	vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
	vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
end
