return {
  "mfussenegger/nvim-dap",
  enabled = true,
  dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
  },
  config = function()
    local dap = require "dap"
    local CODELLDB_DIR = require("mason-registry").get_package("codelldb"):get_install_path()
      .. "/extension/adapter/codelldb"
    local PYTHON_DIR = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/Scripts/python"
    local NODE_DIR = require("mason-registry").get_package("node-debug2-adapter"):get_install_path()
      .. "/out/src/nodeDebug.js"

    dap.adapters.codelldb = {
      name = "codelldb",
      type = "server",
      host = "127.0.0.1",
      port = "${port}",
      executable = {
        command = CODELLDB_DIR,
        args = { "--port", "${port}" },
      },
      detatched = false,
    }

    local lldb = {
      name = "Launch",
      type = "codelldb",
      request = "launch",
      program = function()
        if not vim.g.dap_program or #vim.g.dap_program == 0 then
          vim.g.dap_program = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/")
        end
        return vim.g.dap_program
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      args = {},
    }

    dap.configurations.c = {
      lldb,
    }
    dap.configurations.cpp = {
      lldb,
    }

    -- local dap = require "dap"
    -- dap.configurations.cpp = {
    --   {
    --     name = "Launch file",
    --     type = "cppdbg",
    --     request = "launch",
    --     program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
    --     cwd = "${workspaceFolder}",
    --     stopAtEntry = true,
    --   },
    --   {
    --     name = "Attach to gdbserver :1234",
    --     type = "cppdbg",
    --     request = "launch",
    --     MIMode = "gdb",
    --     miDebuggerServerAddress = "localhost:1234",
    --     miDebuggerPath = "/usr/bin/gdb",
    --     cwd = "${workspaceFolder}",
    --     program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
    --   },
    -- }

    -- dap.configurations.rust = {
    --   lldb
    -- }
    -- dap.configurations.javascript = {
    --   {
    --     name = 'Launch',
    --     type = 'node',
    --     request = 'launch',
    --     program = '${file}',
    --     cwd = vim.fn.getcwd(),
    --     sourceMaps = true,
    --     protocol = 'inspector',
    --     console = 'integratedTerminal',
    --   },
    --   {
    --     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    --     name = 'Attach to process - test',
    --     type = 'node',
    --     request = 'attach',
    --     processId = require 'dap.utils'.pick_process,
    --   },
    -- }
  end,
}
