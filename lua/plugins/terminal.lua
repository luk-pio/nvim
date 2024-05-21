return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			winbar = { enabled = false },
			-- shade_terminals = false,
			shading_factor = "0",
			shade_filetypes = { "none" },
			size = 30,
		})

		vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTermToggleAll)
		vim.keymap.set("n", "<leader>t1", function()
			vim.cmd("ToggleTerm")
		end)
		vim.keymap.set("n", "<leader>t2", function()
			vim.cmd("2ToggleTerm")
		end)
		vim.keymap.set("n", "<leader>t3", function()
			vim.cmd("3ToggleTerm")
		end)
		vim.keymap.set("n", "<leader>t4", function()
			vim.cmd("4ToggleTerm")
		end)

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
