return {
	"dmmulroy/ts-error-translator.nvim",
	dependencies = { "neovim/nvim-lspconfig" },
	config = function()
		require("ts-error-translator").setup()
	end,
}
