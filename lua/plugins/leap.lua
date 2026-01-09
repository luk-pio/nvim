return {
	"ggandor/leap.nvim",
	config = function()
		require("leap").setup({
			highlight_unlabeled_phase_one_targets = true,
		})
		vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)", { desc = "Leap forward to character" })
		vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)", { desc = "Leap backward to character" })
		vim.keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)", { desc = "Leap from any window" })
	end,
}
