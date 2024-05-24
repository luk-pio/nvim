return {
	"chrisgrieser/nvim-spider",
	keys = {
		{
			"w",
			"<cmd>lua require('spider').motion('w')<CR>",
			mode = { "n", "o", "x" },
		},
	},
}
