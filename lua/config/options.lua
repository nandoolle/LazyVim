-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.NERDTreeShowHidden = 1

vim.opt.scrolloff = 20
vim.opt.guicursor = "n-v-c:block-Cursor"
vim.opt.guicursor = "i:blinkon100"
vim.opt.colorcolumn = "81"
vim.opt.cursorcolumn = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 250

-- Improve spell checking for coding
vim.opt.spelloptions = "camel" -- Handle camelCase words better
vim.opt.spellcapcheck = "" -- Don't check for capital letters at start of sentences

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- vim.o.completeopt = "menuone,noselect"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.listchars = table.concat(
  { "tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172" },
  ","
)
vim.o.relativenumber = true
vim.o.mousescroll = "ver:3,hor:0"

return {}
