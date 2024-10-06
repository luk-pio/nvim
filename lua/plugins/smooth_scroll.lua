return {
	"declancm/cinnamon.nvim",
	config = function()
		require("cinnamon").setup({
			keymaps = { extra = true },
			options = {
				delay = 2,
			},
		})
	end,
}
