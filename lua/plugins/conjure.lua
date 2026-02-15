return {
  "Olical/conjure",
  init = function()
    -- -- Desabilita auto-repl para evitar race condition
    -- vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
    --
    -- -- Configurações de eval
    -- vim.g["conjure#client#clojure#nrepl#eval#auto_require"] = false
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = true
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = true
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#cmd"] = "clj -M:nrepl"
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#port_file"] = ".nrepl-port"
  end,
}
