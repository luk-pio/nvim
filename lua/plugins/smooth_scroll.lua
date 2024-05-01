return {
	"declancm/cinnamon.nvim",
	config = function()
		require("cinnamon").setup({
			default_keymaps = true,
			extra_keymaps = true,
			extended_keymaps = true,
			override_keymaps = true,
			default_delay = 2,
			max_length = 60,
		})
	end,
}
