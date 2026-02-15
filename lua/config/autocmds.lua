-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- refresh autocmds
local function augroup(name)
  return vim.api.nvim_create_augroup("autocmd_" .. name, { clear = true })
end

-- custom add missing imports for JS/TS
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("js_organise_imports"),
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    vim.lsp.buf.code_action({
      apply = true,
      context = {
        only = { "source.addMissingImports.ts" }, ---@diagnostic disable-line: assign-type-mismatch
        diagnostics = {},
      },
    })
    -- uncomment this to auto remove unused (Do not recommend)
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } })
  end,
})

-- custom spell check
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  group = augroup("custom_auto_spell"),
  callback = function()
    -- Skip special buffers (help, terminal, prompt, nofile, quickfix)
    if vim.bo.buftype ~= "" then
      return
    end
    -- -- Enable camel case support for code identifiers
    vim.opt_local.spell = true
    vim.opt_local.spelloptions = "camel"

    vim.api.nvim_set_hl(0, "SpellBad", {
      undercurl = true,
      sp = "#a795e6",
      cterm = { underline = true }, ---@diagnostic disable-line: assign-type-mismatch
    })
  end,
})

-- add empty newline before EOF
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("add_empty_new_line_at_eof"),
  pattern = "*",
  callback = function()
    -- Get the last line's content
    local last_line = vim.api.nvim_buf_get_lines(0, -2, -1, false)[1]

    -- If last line has content, add an empty line
    if last_line and last_line ~= "" then
      vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
    end
  end,
})
