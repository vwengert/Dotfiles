---@type ChadrcConfig
local M = {}
M.plugins = "custom.plugins"
M.ui = {
  theme = 'catppuccin',
  transparency = true,
  statusline = {
    theme = "default",
    separator_style = "round",
    override = {
      mode = function()
        return ""
      end,
    },
  },
}
M.mappings = require("custom.mappings")
return M
