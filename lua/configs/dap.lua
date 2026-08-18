local dap = require("dap")

-- Define the codelldb adapter
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    -- Adjust the path depending on your OS. Mason installs it here by default.
    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
    args = { "--port", "${port}" },
  },
}

-- Define the debugging configuration for C++
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

-- Re-use the C++ configuration for C files
dap.configurations.c = dap.configurations.cpp
