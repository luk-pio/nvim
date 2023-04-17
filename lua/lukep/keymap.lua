vim.g.mapleader = " "

-- Open Browser with spc-p-v
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted lines with J K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at start when appending lines with J
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen when C-d, C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't copy overwritten word when pasting spc-p
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard with spc-y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without saving to register spc-d
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Commit changes from vertical select with C-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Change directory to current file
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>", { silent = true })
