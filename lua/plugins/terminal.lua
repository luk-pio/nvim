-- TODO: managing multiple terminal windows
return {
	"rebelot/terminal.nvim",
	config = function()
		require("terminal").setup({
			layout = { open_cmd = "botright new" },
			cmd = { "zsh" },
			autoclose = false,
		})
		require("terminal").current_term_index()
		local term_map = require("terminal.mappings")

		vim.keymap.set({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true, desc = "Send text to terminal" })
		vim.keymap.set({ "n", "t" }, "<C-x>", term_map.toggle, { desc = "Toggle terminal" })
		vim.keymap.set("n", "<leader>to", term_map.run(""), { desc = "Open new terminal shell" })
		vim.keymap.set(
			"n",
			"<leader>tR",
			term_map.run(nil, { layout = { open_cmd = "enew" } }),
			{ desc = "Open new terminal with command" }
		)
		vim.keymap.set("n", "<leader>tk", term_map.kill, { desc = "Kill terminal" })
		vim.keymap.set("n", "<leader>t]", term_map.cycle_next, { desc = "Focus next terminal" })
		vim.keymap.set("n", "<leader>t[", term_map.cycle_prev, { desc = "Focus prev terminal" })
		vim.keymap.set(
			"n",
			"<leader>tl",
			term_map.move({ open_cmd = "belowright vnew" }),
			{ desc = "Move term to right" }
		)
		vim.keymap.set(
			"n",
			"<leader>tj",
			term_map.move({ open_cmd = "belowright new" }),
			{ desc = "Move term to bottom" }
		)
		-- Normal mode with C-m
		vim.keymap.set("t", "<C-m>", [[<c-\><c-n>]])

		vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
			callback = function(args)
				if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
					vim.cmd("startinsert")
				end
			end,
		})
	end,
}
