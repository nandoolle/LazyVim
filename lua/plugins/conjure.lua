return {
  "Olical/conjure",
  init = function()
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = true
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = false
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#cmd"] = "lein repl"
    vim.g["conjure#client#clojure#nrepl#connection#auto_repl#port_file"] = ".nrepl-port"
  end,
}

