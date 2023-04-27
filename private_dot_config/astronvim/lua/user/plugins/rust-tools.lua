return {
  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
    opts = function()
      local extension_path = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

      return {
        tools = {
          reload_workspace_from_cargo_toml = true,
        },
        server = {
          -- standalone file support
          -- setting it to false may improve startup time
          standalone = true,
        },
        dap = { adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path) },
      }
    end,
  },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   opts = {
  --     ensure_installed = {}, -- "rust_analyzer" },
  --   },
  -- }
}
