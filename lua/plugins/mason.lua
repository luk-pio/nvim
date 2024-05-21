return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		mason.setup({})

		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({

			ensure_installed = {
				"graphql",
				"jsonls",
				"sqlls",
				"bashls",
			},

			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
				lua_ls = require("settings.lsp.languages.lua_ls"),
				emmet_language_server = function()
					require("lspconfig").emmet_language_server.setup({
						filetypes = {
							"javascriptreact",
							"typescriptreact",
							"markdown",
							"css",
							"html",
						},
					})
				end,
			},
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
