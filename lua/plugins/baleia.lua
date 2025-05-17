return {
  "m00qek/baleia.nvim",
  version = "*",
  config = function()
    vim.g.conjure_baleia = require("baleia").setup({ line_starts_at = 3 })

    -- local augroup = vim.api.nvim_create_augroup("ConjureBaleia", { clear = true })

    vim.api.nvim_create_user_command("BaleiaColorize", function()
      vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
    end, { bang = true })

    vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, { bang = true })
  end,
}
