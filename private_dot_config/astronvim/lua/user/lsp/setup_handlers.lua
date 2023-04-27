-- override the LSP setup handler function based on server name
return {
  -- first function changes the default setup handler
  function(server, opts) require("lspconfig")[server].setup(opts) end,
  -- keys for a specific server name will be used for that LSP
  sumneko_lua = function(server, opts)
    -- custom sumneko_lua setup handler
    require("lspconfig")["sumneko_lua"].setup(opts)
  end,

  rust_analyzer = function(_, opts)
    -- print(vim.inspect(opts))
    require("rust-tools").setup { server = opts }
  end,
  dartls = function(_, opts) require("flutter-tools").setup { lsp = opts } end,
  clangd = function(_, opts) require("clangd_extensions").setup { server = opts } end,
}
