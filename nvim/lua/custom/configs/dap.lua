local dap = require('dap')

dap.adapters.codelldb = {
  type = 'executable',
  command = '/usr/bin/lldb',
}
dap.configurations.codelldb = {
  type = 'codelldb',
  request = 'attach',
  name = 'Attach',
}
local continue = function()
  if vim.fn.filereadable('.vscode/launch.json') then
    require('dap.ext.vscode').load_launchjs()
  end
  require('dap').continue()
end
