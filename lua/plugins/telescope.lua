return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
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
				file_browser = {
					theme = "ivy",
					hijack_netrw = true,
					prompt_path = true,
					hidden = true,
					no_ignore = true,
					mappings = {
						i = {
							["<C-j>"] = "move_selection_next",
							["<C-k>"] = "move_selection_previous",
						},
					},
				},
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		})

		telescope.load_extension("file_browser")
		telescope.load_extension("fzf")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<Leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser <CR>")
		vim.keymap.set("n", "<leader>fh", "<cmd>Telescope file_browser path=%:p:h select_buffer=true <CR>")
		vim.keymap.set("n", "<leader>hh", builtin.help_tags)
		vim.keymap.set("n", "<leader>fp", builtin.buffers)
		vim.keymap.set("n", "<leader>fa", builtin.live_grep)
		vim.keymap.set("n", "<leader>p", builtin.registers)
		vim.keymap.set("n", "<leader>jl", builtin.jumplist)
	end,
}
