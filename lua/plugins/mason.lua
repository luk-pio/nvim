return {
	"williamboman/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		{
			"pmizio/typescript-tools.nvim",
			dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig", "dmmulroy/ts-error-translator.nvim" },
		},
	},
	config = function()
		local mason = require("mason")
		mason.setup({})
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"graphql",
				"jsonls",
				"bashls",
				"graphql",
				"omnisharp",
				"clangd",
				"pyright",
			},
		})
		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({})
			end,
			["ts_ls"] = function()
				require("typescript-tools").setup({})
				vim.keymap.set("n", "<leader>ri", "<cmd>TSToolsOrganizeImports<CR>")
				vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnused<CR>")
				vim.keymap.set("n", "<leader>rm", "<cmd>TSToolsAddMissingImports<CR>")
				vim.keymap.set("n", "<leader>ra", "<cmd>TSToolsFixAll<CR>")
				vim.keymap.set("n", "<leader>rr", "<cmd>TSToolsRenameFile<CR>")
				vim.keymap.set("n", "<leader>rf", "<cmd>TSToolsFileReferences<CR>")
			end,
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
			["omnisharp"] = function()
				lspconfig.omnisharp.setup({
					cmd = { "/Users/lpiotrak/.local/share/nvim/mason/bin/omnisharp" },
					enable_import_completion = true,
					organize_imports_on_format = true,
					enable_roslyn_analyzers = true,
					root_dir = function()
						return vim.loop.cwd() -- current working directory
					end,
				})
			end,
			["clangd"] = function()
				lspconfig.clangd.setup({
					capabilities = require("cmp_nvim_lsp").default_capabilities(),
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
