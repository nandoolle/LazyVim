-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("autocmd_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("organise_imports"),
  pattern = "*.ts",
  callback = function()
    vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports.ts" }, diagnostics = {} } })
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } })
  end,
})

-- Add command to restore normal spell checking behavior
vim.api.nvim_create_user_command("SpellEverything", function()
  -- Enable spell checking
  vim.opt_local.spell = true
  vim.opt_local.spelllang = "en_us"

  -- Enable camel case support for code identifiers
  vim.opt_local.spelloptions = "camel"

  -- Use a visible but not intrusive highlighting
  vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "red", cterm = { underline = true } })

  -- For code files: enable smart spell checking that excludes framework code
  vim.cmd([[
      " Reset syntax spell settings
      syntax clear
      syntax spell toplevel
      syntax spell default
      " Check spelling in comments
      ]])
  -- vim.notify("Spell checking enabled for custom code only (comments, strings, and your variables)", vim.log.levels.INFO)
end, {})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  group = augroup("auto_spell"),
  callback = function()
    -- Avoid running on certain file types or unnamed buffers
    local filetype = vim.bo.filetype
    local filename = vim.fn.expand("%:t")

    -- Skip for special buffers, empty buffers, or certain filetypes
    if
      filetype == ""
      or filetype == "NvimTree"
      or filetype == "TelescopePrompt"
      or filetype == "fugitive"
      or filetype == "help"
      or filename == ""
    then
      return
    end

    -- Run SpellEverything for proper files
    vim.cmd("SpellEverything")
  end,
})
