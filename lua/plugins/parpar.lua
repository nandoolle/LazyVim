return {
  "dundalek/parpar.nvim",
  dependencies = { "gpanders/nvim-parinfer", "julienvincent/nvim-paredit" },
  config = function()
    local paredit = require("nvim-paredit")
    require("parpar").setup({
      paredit = {
        keys = {
          ["<localleader>kl"] = { paredit.api.slurp_backwards, "Slurp backwards" },
          ["<localleader>jh"] = { paredit.api.barf_backwards, "Barf backwards" },
          ["<localleader>jj"] = { paredit.api.barf_forwards, "Barf forwards" },
          ["<localleader>kk"] = { paredit.api.slurp_forwards, "Slurp forwards" },
        },
      },
    })
  end,
}
