-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 20
vim.opt.guicursor = "n-v-c:block-Cursor"
vim.opt.guicursor = "i:blinkon100"
vim.g.NERDTreeShowHidden = 1
vim.opt.colorcolumn = "81"
vim.opt.cursorcolumn = true
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Improve spell checking for coding
vim.opt.spelloptions = "camel" -- Handle camelCase words better
vim.opt.spellcapcheck = "" -- Don't check for capital letters at start of sentences
vim.o.mousescroll = "ver:3,hor:0"

vim.g.mapleader = " "
vim.g.maplocalleader = ","
