require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<A-p>", "<cmd> ProjectMgr<cr>", {desc = "Project Manager"})
map("n", "<leader>lg", "<cmd>LazyGit<cr>", {desc = "LazyGit"})
map("n", "<leader>ld", "<cmd>LazyDocker<cr>", {desc = "LazyDocker"})
