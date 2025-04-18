return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,

        header = [[
.------. .------..------. .-. .--.
 ||  _   V   _   ||   _   V  \/  ||
 || | |  |  | |  ||  | |  | .  . ||
 || | |  |   '|  ||  |'   | |\/| ||
 || |' .'|'.   .'||'.   .'|'|\/| ||
 ||  .'.' '.'.'.'  '.'.'.' '|  | ||
 ||.'.'     '.'      '.'       |.||
 |_.'        E M A C S         '._|
 ]],
       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
         { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
         { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         { icon = " ", key = "s", desc = "Restore Session", section = "session" },
         { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
         { icon = "⛧", key = "m", desc = "Mason", action = ":Mason" },
         { icon = " ", key = "q", desc = "Quit", action = ":qa" },
       },
      },
    }
  end,
}

-- =================     ===============     ===============   ========  ========
-- \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
-- ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
-- || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
-- ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
-- || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
-- ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
-- || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
-- ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
-- ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
-- ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
-- ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
-- ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
-- ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
-- ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
-- ||.=='    _-'                                                     `' |  /==.||
-- =='    _-'                        N E O V I M                         \/   `==
-- \   _-'                                                                `-_   /
-- `''                                                                      ``'
--
-- .------. .------..------. .-. .--.
-- ||  _   V   _   ||   _   V  \/  ||
-- || | |  |  | |  ||  | |  | .  . ||
-- || | |  |   '|  ||  |'   | |\/| ||
-- || |' .'|'.   .'||'.   .'|'|\/| ||
-- ||  .'.' '.'.'.'  '.'.'.' '|  | ||
-- ||.'.'     '.'      '.'       |.||
-- |_.'                          '._|
--
-- =================     ===============     ===============   ========  ========
--  \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
--  ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
--  || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
--  ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
--  || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
--  ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
--  || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
--  ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
--  ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
--  ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
--  ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
--  ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
--  ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
--  ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
--  ||.=='    _-'                                                     `' |  /==.||
--  =='    _-'                         E M A C S                          \/   `==
--  \   _-'                                                                `-_   /
--   `''                                                                      ``'
