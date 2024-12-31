require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>gn", "<cmd> Neogit<CR>", { desc = "neogit open" })
-- map('n', "<C-i>", "<cmd>lua require('notify').dismiss()<CR>", {desc="dismiss notification" })
map("n", "<leader>tb", "<cmd>lua require('base46').toggle_transparency()<CR>", { desc = "togggle transparency" })
map("n", "<leader>fu", "<CMD>Telescope undo<CR>", { desc = "Find undo" })

map("n", "<leader>xx", "<cmd>lua require('trouble').toggle()<CR>", { desc = "toggle trouble" })
map(
  "n",
  "<leader>xw",
  "<cmd>lua require('trouble').toggle('workspace_diagnostics')<CR>",
  { desc = "toggle workspace diagnostics" }
)
map("n", "<c-s>", "<CMD>w<CR>", { desc = "Save the current buffer" })
map(
  "n",
  "<leader>xd",
  "<cmd>lua require('trouble').toggle('document_diagnostics')<CR>",
  { desc = "toggle document diagnostics" }
)
map("n", "<leader>xq", "<cmd>lua require('trouble').toggle('quickfix')<CR>", { desc = "toggle quickfix" })
map("n", "<leader>xl", "<cmd>lua require('trouble').toggle('loclist')<CR>", { desc = "toggle location list" })
-- map("n", "gR", "<cmd>lua require('trouble').toggle('lsp_references')<CR>", { desc = "toggle LSP references" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- obsidian shortcuts
map("n", "<leader>on", "<CMD>ObsidianNew<CR>", { desc = "Create new file in obsidian notes" })
