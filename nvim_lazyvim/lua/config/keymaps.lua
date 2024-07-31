-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>cc", "<cmd>ClangdSwitchSourceHeader<cr>", { desc = "Switch Source/Header" })
map("n", "<F4>", "<cmd>ClangdSwitchSourceHeader<cr>", { desc = "Switch Source/Header" })

map("i", "jk", "<Esc>", { desc = "remap jk to Esc" })
