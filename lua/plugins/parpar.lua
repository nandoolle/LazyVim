return {
  "dundalek/parpar.nvim",
  dependencies = { "gpanders/nvim-parinfer", "julienvincent/nvim-paredit" },
  config = function()
    local paredit = require("nvim-paredit")
    require("parpar").setup({
      paredit = {
        keys = {
          ["<localleader>ll"] = { paredit.api.slurp_backwards, "Slurp backwards" },
          ["<localleader>hh"] = { paredit.api.barf_backwards, "Barf backwards" },
          ["<localleader>j"] = { paredit.api.barf_forwards, "Barf forwards" },
          ["<localleader>k"] = { paredit.api.slurp_forwards, "Slurp forwards" },
        },
      },
    })
  end,
}
