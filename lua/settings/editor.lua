-- Line numbers
vim.opt.number = false
vim.opt.relativenumber = false

vim.opt.termguicolors = true
-- Highlight current cursor line
vim.opt.cursorline = true

-- Indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Linewrap
vim.opt.wrap = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Use Mouse in vim
vim.opt.mouse = 'a'

-- Save default buffer to system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Automatically refresh the buffer in case of changes
vim.opt.autoread = true

-- Undo between nvim sessions
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.conceallevel = 1
