return {
	{ "tpope/vim-repeat", event = "InsertEnter" },
	{ "tpope/vim-surround", event = { "BufReadPost", "BufNewFile" } },
	{ "tpope/vim-commentary", event = { "BufReadPost", "BufNewFile" } },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
