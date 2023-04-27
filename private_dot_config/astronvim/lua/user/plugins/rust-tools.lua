return {
  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
    ft = "rust",
    event = "BufEnter",
    opts = function()
      local extension_path = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

      return {
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
