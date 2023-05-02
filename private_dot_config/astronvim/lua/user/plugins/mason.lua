-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "clangd",
        "cssls",
        "jsonls",
        "pyright",
        "sqlls",
        "lua_ls",
        "yamlls",
        "teal_ls",
        "rust_analyzer",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "stylua", "cmakelang", "shellcheck" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "bash",
        "cppdbg",
        "python",
      },
      automatic_installation = true,
    },
  },
}
