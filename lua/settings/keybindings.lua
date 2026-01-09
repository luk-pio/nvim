-- =============== GENERAL ====================
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>so", "<cmd>source %<CR>", { desc = "Read source file" })

-- =============== NAV ====================
-- Keep cursor at start when appending lines with J
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines keeping cursor at start" })

-- Keep cursor in the middle of the screen when C-d, C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page, center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page, center cursor" })

-- Keep search terms in the middle when searching
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result, center screen" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result, center screen" })

vim.keymap.set("n", "<leader>ch", "<cmd>noh<CR>", { desc = "Clear search highlighting" })

-- Move to next and previous errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location list item" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location list item" })

-- Change directory to current file
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>", { desc = "Change to current file directory", silent = true })

-- Delete current files
vim.keymap.set("n", "<leader>fD", "<cmd>call delete(expand('%')) | bdelete! <CR>", { desc = "Delete current file and close buffer" })

-- Vim diagnostic
vim.keymap.set("n", "<leader>se", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

-- =============== EDIT ====================
-- Insert mode
vim.keymap.set("i", "<C-k>", "<C-o>k", { desc = "Move cursor up" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursor right" })
vim.keymap.set("i", "<C-j>", "<C-o>j", { desc = "Move cursor down" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Don't copy overwritten word when pasting spc-p
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yanking replaced text" })

-- Copy to system clipboard with spc-y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

-- Delete without saving to register spc-d
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without saving to register" })

-- Commit changes from vertical select with C-c
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

-- Move highlighted lines with J K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Replace current selection in whole file
vim.keymap.set("v", "<leader>rs", [[y:%s/<C-r>"//g<left><left>]], { desc = "Replace selection in entire file" })

-- =============== WINDOWS ====================
-- Resize windows
-- Use alt + hjkl to resize windows
vim.keymap.set("n", "<A-J>", ":resize -8<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-K>", ":resize +8<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-H>", ":vertical resize -8<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-L>", ":vertical resize +8<CR>", { desc = "Increase window width" })

-- Toggle line no
vim.keymap.set("n", "<leader>ln", "<cmd>set number!<CR>", { desc = "Toggle line numbers" })
