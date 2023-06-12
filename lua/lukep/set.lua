-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Linewrap
vim.opt.wrap = true

-- Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.termguicolors = true
vim.cmd.colorscheme("everforest")

-- Automatically refresh the buffer in case of changes
vim.opt.autoread = true

-- Python
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
