-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

-- command and mapping to change directory to dir of current buffer
command("CDC", "cd %:p:h", {})
map("n", "<leader>bc", "<cmd>CDC<cr>", { noremap = true, silent = false, desc = "Switch to Buffer Directory" })

-- switch start of line and start of line non-blank
map({ "n", "v", "o" }, "0", "^", { noremap = true, silent = true, desc = "Start of line (non-blank)" })
map({ "n", "v", "o" }, "^", "0", { noremap = true, silent = true, desc = "Start of line" })

-- mappings to add lines
map("n", "<A-o>", "m`o<esc>``", { noremap = true, silent = true, desc = "Create line below" })
map("n", "<A-O>", "m`O<esc>``", { noremap = true, silent = true, desc = "Create line above" })

-- use lazygit.nvim instead of terminal lazygit
vim.keymap.del("n", "<leader>gg")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { noremap = true, silent = true, desc = "LazyGit (root dir)" })
vim.keymap.del("n", "<leader>gG")
map("n", "<leader>gG", "<cmd>LazyGitCurrentFile<cr>", { noremap = true, silent = true, desc = "LazyGit (cwd)" })
