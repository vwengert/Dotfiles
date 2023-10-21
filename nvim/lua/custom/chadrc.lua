---@type ChadrcConfig
local M = {}
M.plugins = "custom.plugins"
M.ui = {
  theme = 'dark_horizon',
  transparency = true,
  statusline = {
    theme = "vscode_colored",
    override = {
      mode = function()
        return ""
      end,
    },
  },
}
M.mappings = require("custom.mappings")
return M
