-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,       -- sets vim.opt.number
    spell = false,       -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false,        -- sets vim.opt.wrap
    swapfile = false,
    list = true,         -- show whitespace characters
    showtabline = 2,     -- show tabline by default
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_enabled = true,      -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    python3_host_prog = "/home/blackdante/.pyenv/versions/3.11.2/envs/neovim/bin/python",
  },
}
