-- =============== GENERAL ====================
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>so", "<cmd>source %<CR>", { desc = "Read source file" })

-- =============== NAV ====================
-- Keep cursor at start when appending lines with J
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen when C-d, C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>ch", "<cmd>noh<CR>")

-- Move to next and previous errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Change directory to current file
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>", { silent = true })

-- Delete current files
vim.keymap.set("n", "<leader>fD", "<cmd>call delete(expand('%')) | bdelete! <CR>")

-- Vim diagnostic
vim.keymap.set("n", "<leader>se", "<cmd>Telescope diagnostics bufnr=0<CR>")
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next)

-- =============== EDIT ====================
-- Insert mode
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "jk", "<Esc>")

-- Don't copy overwritten word when pasting spc-p
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard with spc-y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without saving to register spc-d
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Commit changes from vertical select with C-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Move highlighted lines with J K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace current selection in whole file
vim.keymap.set("v", "<leader>rs", [[y:%s/<C-r>"//g<left><left>]])

-- =============== WINDOWS ====================
-- Resize windows
-- Use alt + hjkl to resize windows
vim.keymap.set("n", "<A-J>", ":resize -8<CR>")
vim.keymap.set("n", "<A-K>", ":resize +8<CR>")
vim.keymap.set("n", "<A-H>", ":vertical resize -8<CR>")
vim.keymap.set("n", "<A-L>", ":vertical resize +8<CR>")

-- Toggle line no
vim.keymap.set("n", "<leader>ln", "<cmd>set number!<CR>")
