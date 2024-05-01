return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"onsails/lspkind.nvim",
		"saadparwaiz1/cmp_luasnip",
		{
			"L3MON4D3/LuaSnip",
			dependencies = {
				"rafamadriz/friendly-snippets", -- useful snippets
			},
		},
	},
	config = function()
		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Replace }
		local lspkind = require("lspkind")

		-- Load snippets from friendly-snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			-- Where to get autocomplete suggestions from
			sources = {
				{ name = "nvim_lsp", priority = 8 },
				{ name = "luasnip", priority = 5 },
				{ name = "path", priority = 4 },
				{ name = "buffer", priority = 4 },
				{ name = "nvim_lua", priority = 3 },
			},
			formatting = {
				format = lspkind.cmp_format({ with_text = false, maxwidth = 50 }),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-f>"] = cmp.mapping.complete(),
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- Use tab to move to slots in snippet
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},

			-- Select the first item by default
			preselect = "item",

			completion = {
				completeopt = "menu,menuone,noinsert",
			},

			-- Make the window more visually distinct
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
		})

		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		cmp_nvim_lsp.default_capabilities()
	end,
}
