require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map('n', "<leader>gn", "<cmd> Neogit<CR>", {desc="neogit open" })
map('n', "<C-i>", "<cmd>lua require('notify').dismiss()<CR>", {desc="dismiss notification" })
map('n', "<leader>tb", "<cmd>lua require('base46').toggle_transparency()<CR>", {desc="togggle transparency" })
map('n', "<leader>fu", "<CMD>Telescope undo<CR>", {desc="Find undo" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
