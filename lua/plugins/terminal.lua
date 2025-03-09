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

		vim.keymap.set({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true })
		vim.keymap.set({ "n", "t" }, "<C-x>", term_map.toggle)
		vim.keymap.set("n", "<leader>tT", term_map.toggle({ open_cmd = "enew" }))
		vim.keymap.set("n", "<leader>to", term_map.run(""))
		vim.keymap.set("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }))
		vim.keymap.set("n", "<leader>tk", term_map.kill)
		vim.keymap.set("n", "<leader>t]", term_map.cycle_next)
		vim.keymap.set("n", "<leader>t[", term_map.cycle_prev)
		vim.keymap.set(
			"n",
			"<leader>tl",
			term_map.move({ open_cmd = "belowright vnew" }),
			{ desc = "Move term to right" }
		)
		vim.keymap.set(
			"n",
			"<leader>th",
			term_map.move({ open_cmd = "belowright new" }),
			{ desc = "Move term to bottom" }
		)
		vim.keymap.set("n", "<leader>tf", term_map.move({ open_cmd = "float" }), { desc = "Move term to float" })
		-- Normal mode with C-n
		vim.keymap.set("t", "<C-n>", [[<c-\><c-n>]])
		vim.keymap.set({ "n", "t", "i" }, "\\ff", [[<cmd>Telescope find_files<CR>]])

		vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
			callback = function(args)
				if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
					vim.cmd("startinsert")
				end
			end,
		})
	end,
}
