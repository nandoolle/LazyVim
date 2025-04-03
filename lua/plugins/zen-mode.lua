return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = {
        backdrop = 0.7,
        width = 0.75,
        height = 0.95,
      },
      plugins = {
        gitsigns = true,
        -- tmux = true,
        -- kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
