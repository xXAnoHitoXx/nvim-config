local dap = require('dap')
local dap_ui = require("dapui")
require("nvim-dap-virtual-text").setup()

dap.adapters.godot = {
  type = "server",
  host = '127.0.0.1',
  port = 6006,
}

dap.configurations.gdscript = {
  {
    type = "godot",
    request = "launch",
    name = "Launch scene",
    project = "${workspaceFolder}",
    launch_scene = true,
  }
}

vim.keymap.set("n", "<leader>td", function() dap_ui.toggle() end)
vim.keymap.set("n", "<leader>tt", function() dap.continue() end)
vim.keymap.set('n', "<leader>ts", function() dap.step_over() end)
vim.keymap.set('n', "<leader>ti", function() dap.step_into() end)
vim.keymap.set('n', "<leader>to", function() dap.step_out() end)
vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
