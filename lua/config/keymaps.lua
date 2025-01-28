-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Mapping CMD + Right/Left Arrow in insert mode to jump to line end/start
vim.keymap.set("i", "<D-Right>", "<Esc>A", { silent = true })
vim.keymap.set("i", "<D-Left>", "<Esc>0i", { silent = true })
