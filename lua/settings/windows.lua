-- Terminal mode mappings
vim.keymap.set('t', '<A-h>', '<C-\\><C-N><C-w>h', { noremap = true, desc = "Move to left window" })
vim.keymap.set('t', '<A-j>', '<C-\\><C-N><C-w>j', { noremap = true, desc = "Move to window below" })
vim.keymap.set('t', '<A-k>', '<C-\\><C-N><C-w>k', { noremap = true, desc = "Move to window above" })
vim.keymap.set('t', '<A-l>', '<C-\\><C-N><C-w>l', { noremap = true, desc = "Move to right window" })

-- Insert mode mappings
vim.keymap.set('i', '<A-h>', '<C-\\><C-N><C-w>h', { noremap = true, desc = "Move to left window" })
vim.keymap.set('i', '<A-j>', '<C-\\><C-N><C-w>j', { noremap = true, desc = "Move to window below" })
vim.keymap.set('i', '<A-k>', '<C-\\><C-N><C-w>k', { noremap = true, desc = "Move to window above" })
vim.keymap.set('i', '<A-l>', '<C-\\><C-N><C-w>l', { noremap = true, desc = "Move to right window" })

-- Normal mode mappings
vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, desc = "Move to left window" })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, desc = "Move to window below" })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, desc = "Move to window above" })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, desc = "Move to right window" })
