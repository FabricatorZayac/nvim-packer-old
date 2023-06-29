vim.keymap.set("n", "<F5>", require"dap".continue)
vim.keymap.set("n", '<leader>b', require('dap').toggle_breakpoint)

local dap = require("dap")

dap.adapters.lldb = {
  name = "lldb",
  type = "executable",
  command = "/usr/bin/lldb-vscode",
}

local lldb = {
  name = "Launch lldb",
  type = "lldb",
  request = "launch",
  program = function()
    vim.fn.input("Path to executable: ",
                 vim.fn.getcwd() .. "/",
                 "file")
  end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
  args = {},
  runInTerminal = false,
}

dap.configurations.c = { lldb }
dap.configurations.cpp = { lldb }
dap.configurations.zig = { lldb }
dap.configurations.rust = { lldb }

-- require("dapui").setup()
