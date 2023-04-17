local chat = require("chatgpt")
vim.keymap.set("n", "<leader>c", function () chat.openChat() end)
