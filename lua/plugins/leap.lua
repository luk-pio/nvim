return {
	"ggandor/leap.nvim",
	config = function()
		require("leap").setup({
			highlight_unlabeled_phase_one_targets = true,
		})
		vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
		vim.keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")
	end,
}
