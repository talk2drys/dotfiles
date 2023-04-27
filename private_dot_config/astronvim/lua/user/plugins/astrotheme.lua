return {
  "AstroNvim/astrotheme",
  opts = {
    termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.
    terminal_color = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.
    plugin_default = "auto", -- Sets how all plugins will be loaded
                             -- "auto": Uses lazy / packer enabled plugins to load highlights.
      -- true: Enables all plugins highlights.
                             -- false: Disables all plugins.

    plugins = {              -- Allows for individual plugin overides using plugin name and value from above.
    },

    highlights = {
      astrodark = {
        -- first parameter is the highlight table and the second parameter is the color palette table
        modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
          hl.Normal.bg = c.black
        end,
      },
    },
  },
}
