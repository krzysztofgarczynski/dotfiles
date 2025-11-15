local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

codelldb_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb"
probe_rs_path = "/usr/bin/probe-rs"

dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = codelldb_path,
    args = { "--port", "${port}"},
    detached = false,
  }
}

dap.adapters.openocd = {
  type = "server",
  host = "127.0.0.1",
  port = 3333,
}

dap.adapters.probe-rs-debug = {
  type = "server",
  port = "${port}",
  executable = {
    command = probe_rs_path,
    args = {"dap-server", "--port", "${port}"},
  },
}

dap.configurations.c = {
  {
    name = "Debug with LLDB",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
  {
    name = "Debug with OpenOCD",
    type = "openocd",
    request = "launch",
     program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. "/", "file")
    end,   
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    setupCommands = {
      text = "target remote localhost:3333",
      description = "Connect to OpenOCD",
    },
  },
}
dap.configurations.cpp = dap.configurations.c

dap.listeners.after.attach.depui_config = function()
  dapui.open()
end
dap.listeners.after.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
