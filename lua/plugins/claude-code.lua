return {
  "nandoolle/claude-code.nvim",
  lazy = true,
  keys = {
    { "<localleader>cc", "<cmd>lua require('claude-code').toggle()<cr>", desc = "Toggle Claude Code" },
  },
  config = function()
    require("claude-code").setup()
  end,
}
