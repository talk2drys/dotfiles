-- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
return {
  dartls = {
    -- any changes you want to make to the LSP setup, for example
    color = {
      enabled = true,
    },
    settings = {
      showTodos = true,
      lineLength = 120,
      completeFunctionCalls = true,
    },
  },
}
