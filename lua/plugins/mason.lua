return {
	"williamboman/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
		-- {
		-- 	"pmizio/typescript-tools.nvim",
		-- 	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig", "dmmulroy/ts-error-translator.nvim" },
		-- },
	},
	config = function()
		local mason = require("mason")
		mason.setup({})

		local lspconfig = require("lspconfig")

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
				lspconfig[server_name].setup({})
			end,
			-- Use typescript-tools with tsserver
			-- ["tsserver"] = function()
			-- 	require("typescript-tools").setup({})
			-- 	vim.keymap.set("n", "<leader>ri", "<cmd>TSToolsOrganizeImports<CR>")
			-- 	vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnused<CR>")
			-- 	vim.keymap.set("n", "<leader>rm", "<cmd>TSToolsAddMissingImports<CR>")
			-- 	vim.keymap.set("n", "<leader>ra", "<cmd>TSToolsFixAll<CR>")
			-- 	vim.keymap.set("n", "<leader>rr", "<cmd>TSToolsRenameFile<CR>")
			-- 	vim.keymap.set("n", "<leader>rf", "<cmd>TSToolsFileReferences<CR>")
			-- end,
			["jsonls"] = function()
				lspconfig.jsonls.setup({
					json = {
						schemas = {
							{
								fileMatch = { "package.json" },
								url = "https://json.schemastore.org/package.json",
							},
							{
								fileMatch = { "tsconfig*.json" },
								url = "https://json.schemastore.org/tsconfig.json",
							},
							{
								fileMatch = {
									".prettierrc",
									".prettierrc.json",
									"prettier.config.json",
								},
								url = "https://json.schemastore.org/prettierrc.json",
							},
							{
								fileMatch = { ".eslintrc", ".eslintrc.json" },
								url = "https://json.schemastore.org/eslintrc.json",
							},
							{
								fileMatch = { ".babelrc", ".babelrc.json", "babel.config.json" },
								url = "https://json.schemastore.org/babelrc.json",
							},
							{
								fileMatch = { "lerna.json" },
								url = "https://json.schemastore.org/lerna.json",
							},
							{
								fileMatch = { "now.json", "vercel.json" },
								url = "https://json.schemastore.org/now.json",
							},
							{
								fileMatch = {
									".stylelintrc",
									".stylelintrc.json",
									"stylelint.config.json",
								},
								url = "http://json.schemastore.org/stylelintrc.json",
							},
						},
					},
				})
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
