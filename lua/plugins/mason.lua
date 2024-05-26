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
			-- Use typescript-tools with tsserver
			["tsserver"] = function()
				require("typescript-tools").setup({})
				vim.keymap.set("n", "<leader>ri", "<cmd>TSToolsOrganizeImports<CR>")
				vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnused<CR>")
				vim.keymap.set("n", "<leader>rm", "<cmd>TSToolsAddMissingImports<CR>")
				vim.keymap.set("n", "<leader>ra", "<cmd>TSToolsFixAll<CR>")
				vim.keymap.set("n", "<leader>rr", "<cmd>TSToolsRenameFile<CR>")
				vim.keymap.set("n", "<leader>rf", "<cmd>TSToolsFileReferences<CR>")
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
