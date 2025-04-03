return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.window =
      {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }, table.insert(opts.sources, { name = "emoji" })
  end,
}
