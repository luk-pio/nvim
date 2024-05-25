return {
	"williamboman/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
		{
			"pmizio/typescript-tools.nvim",
			dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig", "dmmulroy/ts-error-translator.nvim" },
		},
	},
	config = function()
		local mason = require("mason")
		mason.setup({})

		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"graphql",
				"jsonls",
				"bashls",
				"graphql",
			},
		})
		mason_lspconfig.setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
			-- Next, you can provide a dedicated handler for specific servers.
			-- For example, a handler override for the `rust_analyzer`:
			["tsserver"] = function()
				require("typescript-tools").setup({})
				vim.keymap.set("n", "<leader>ti", "<cmd>TSToolsOrganizeImports<CR>")
				vim.keymap.set("n", "<leader>tu", "<cmd>TSToolsRemoveUnused<CR>")
				vim.keymap.set("n", "<leader>tm", "<cmd>TSToolsAddMissingImports<CR>")
				vim.keymap.set("n", "<leader>ta", "<cmd>TSToolsFixAll<CR>")
				vim.keymap.set("n", "<leader>tr", "<cmd>TSToolsRenameFile<CR>")
				vim.keymap.set("n", "<leader>tf", "<cmd>TSToolsFileReferences<CR>")
			end,
		})

		local mason_tool_installer = require("mason-tool-installer")
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
			},
		})
	end,
}
