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
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		-- -- Lazygit
		-- local Terminal = require("toggleterm.terminal").Terminal

		-- local lazygit = Terminal:new({
		--   cmd = "lazygit",
		--   dir = "git_dir",
		--   direction = "float",
		--   float_opts = {
		--     border = "double",
		--   },

		--   -- function to run on opening the terminal
		--   on_open = function(term)
		--     vim.cmd("startinsert!")
		--     vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
		--   end,

		--   -- function to run on closing the terminal
		--   on_close = function()
		--     vim.cmd("startinsert!")
		--   end,
		-- })

		-- function lazygit_toggle()
		--   lazygit:toggle()
		-- end

		-- vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}
