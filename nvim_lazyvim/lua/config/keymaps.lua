-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>cc", "<cmd>ClangdSwitchSourceHeader<cr>", { desc = "Switch Source/Header" })
map("n", "<F4>", "<cmd>ClangdSwitchSourceHeader<cr>", { desc = "Switch Source/Header" })

map("n", "<leader>mc", "<cmd> CMakeClean <CR>", { desc = "Clean CMake Project" })

map(
  "n",
  "<leader>mg",
  "<cmd> CMakeGenerate -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 <CR>",
  { desc = "Generate CMake Project" }
)
map("n", "<leader>mb", "<cmd>wa<cr> <cmd> CMakeBuild <CR>", { desc = "Build CMake Project" })
map("n", "<leader>mt", "<cmd> CMakeTest --verbose <CR>", { desc = "Test CMake Project" })
map("n", "<leader>mq", "<cmd> CMakeToggle <CR>", { desc = "Toggle CMake Window" })
map("n", "<leader>ms", "<cmd> CMakeStop <CR>", { desc = "Stop CMake" })
map("i", "jk", "<Esc>", { desc = "Escape insert mode" })
