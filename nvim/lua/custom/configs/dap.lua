local dap = require('dap')

dap.adapters.cpp = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.exepath('OpenDebugAD7')
}
local continue = function()
  if vim.fn.filereadable('.vscode/launch.json') then
    require('dap.ext.vscode').load_launchjs( nil, { cpp = {'c', 'cpp'}})
  end
  require('dap').continue()
end
