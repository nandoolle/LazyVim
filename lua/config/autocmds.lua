-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("autocmd_" .. name, { clear = true })
end

-- custom add missing imports for JS/TS
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("organise_imports"),
  pattern = "*.ts",
  callback = function()
    vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports.ts" }, diagnostics = {} } })
    -- uncomment this to auto remove unused (Do not recommend)
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } })
  end,
})

--  custom spell check
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
--   group = augroup("auto_spell"),
--   callback = function()
--     -- Avoid running on certain file types or unnamed buffers
--     local filetype = vim.bo.filetype
--     local filename = vim.fn.expand("%:t")
--
--     -- Skip for special buffers, empty buffers, or certain filetypes
--     if
--       filetype == ""
--       or filetype == "NvimTree"
--       or filetype == "TelescopePrompt"
--       or filetype == "fugitive"
--       or filetype == "help"
--       or filename == ""
--     then
--       return
--     end
--
--     -- -- Enable camel case support for code identifiers
--     vim.opt_local.spell = true
--     vim.opt_local.spelloptions = "camel"
--
--     -- Use a visible but not intrusive highlighting
--     vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "red", cterm = { underline = true } })
--
--     -- For code files: enable smart spell checking that excludes framework code
--     vim.cmd([[
--       syntax clear
--       syntax spell toplevel
--       syntax spell default
--       ]])
--   end,
-- })
