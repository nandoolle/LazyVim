return {
  "Olical/conjure",
  branch = "main",
  ft = { "clojure", "fennel" },
  init = function()
    vim.cmd({ cmd = "command", args = { "-nargs=1", "Cjc", "ConjureConnect", "<args>" }, bang = true })
    vim.keymap.set("n", "<localleader>ecl", "<cmd>Cjc 9666<CR>")

    vim.g["conjure#mapping#doc_word"] = "K"
    vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 1

    vim.g["conjure#client#clojure#nrepl#test#current_form_names"] = { "deftest", "defflow", "defspec", "describe" }

    -- vim.g["conjure#client#clojure#nrepl#connection#auto_repl#port_file"] = "9666"
    -- vim.g["conjure#client#clojure#nrepl#connection#auto_repl#cmd"] = "lein repl :headless :host 127.0.0.1 :port $port"

    vim.g["conjure#client#clojure#nrepl#eval#auto_require"] = true
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false

    -- Print color codes if baleia.nvim is available
    vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = colorize and 1 or nil
    local colorize = require("lazyvim.util").has("baleia.nvim")

    -- Disable diagnostics in log buffer and colorize it
    vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
      pattern = "conjure-log-*",
      callback = function()
        local buffer = vim.api.nvim_get_current_buf()
        vim.diagnostic.enable(false, { bufnr = buffer })
        if colorize and vim.g.conjure_baleia then
          vim.g.conjure_baleia.automatically(buffer)
        end
      end,
    })
  end,
}
