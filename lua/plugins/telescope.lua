return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				-- set the prompt at the top
				layout_config = {
					horizontal = {
						prompt_position = "top",
					},
				},
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			pickers = {
				buffers = {
					ignore_current_buffer = true,
					sort_mru = true,
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		})

		telescope.load_extension("fzf")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<C-y>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fi", "<cmd>Telescope find_files no_ignore=true <CR>")
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
		vim.keymap.set("n", "<leader>hh", builtin.help_tags)
		vim.keymap.set("n", "<leader>fb", builtin.buffers)
		vim.keymap.set("n", "<leader>fa", builtin.live_grep)
		vim.keymap.set("n", "<leader>fp", builtin.registers)
		vim.keymap.set("n", "<leader>fj", builtin.jumplist)
		vim.keymap.set("n", "<leader>fk", builtin.keymaps)
		vim.keymap.set("n", "<leader>fc", builtin.commands)
	end,
}
