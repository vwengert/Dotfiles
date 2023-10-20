local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue debugger",
    },
    ["<leader>cg"] = {
      "<cmd> CMakeGenerate <CR>",
      "Generate CMake Project",
    },
    ["<leader>cb"] = {
      "<cmd> CMakeBuild <CR>",
      "Build CMake Project",
    },
    ["<leader>ct"] = {
      "<cmd> CMakeTest --verbose <CR>",
      "Test CMake Project",
    },
    ["<leader>cq"] = {
      "<cmd> CMakeClose <CR>",
      "Close CMake Window",
    },
  }
}
return M
