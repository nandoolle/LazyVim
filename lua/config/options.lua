-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.guicursor = "n-v-c:block-Cursor"
vim.o.mousescroll = "ver:3,hor:0"
vim.o.guicursor = "i:blinkon100"
vim.o.spelloptions = "camel"
vim.o.winborder = "rounded"
vim.g.maplocalleader = ","
vim.o.termguicolors = true
vim.o.cursorcolumn = true
vim.o.spellcapcheck = ""
vim.o.colorcolumn = "81"
vim.o.swapfile = false
vim.o.updatetime = 50
vim.o.undofile = true
vim.o.scrolloff = 20
vim.o.backup = false
vim.o.fixeol = true
vim.o.list = true
vim.o.listchars = table.concat({
  "tab:\226\150\182-",
  "trail:\226\128\162",
  "extends:\194\187",
  "precedes:\194\171",
  "eol:\194\172",
}, ",")
vim.g.NERDTreeShowHidden = 1
vim.treesitter.language.register("bash", "zsh")

return {}
