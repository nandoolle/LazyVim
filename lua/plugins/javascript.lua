return {
  {
    "nandoolle/nest-repl.nvim",
    lazy = true,
    ft = { "typescript", "javascript" },
    cond = function()
      return require("nest-repl.detect").is_nest_project()
    end,
    config = function()
      require("nest-repl").setup({
        -- recommended command `npm run start -- --watch --entryFile repl`
        repl_command = "npm run start -- --watch --entryFile repl",
        terminal_width = 80, -- Width of the terminal split
        terminal_position = "right", -- 'left' or 'right',
        keybindings = {
          start_repl = "<localleader>nrs",
          load_method = "<localleader>ne",
          load_method_to_var = "<localleader>nve",
        },
      })
    end,
  },
}
