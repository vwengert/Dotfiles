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
  }
}

M.cmake = {
  plugin = true,
  n = {
    ["<leader>mg"] = {
      "<cmd> CMakeGenerate <CR>",
      "Generate CMake Project",
    },
    ["<leader>mb"] = {
      "<cmd> CMakeBuild <CR>",
      "Build CMake Project",
    },
    ["<leader>mt"] = {
      "<cmd> CMakeTest --verbose <CR>",
      "Test CMake Project",
    },
    ["<leader>mq"] = {
      "<cmd> CMakeClose <CR>",
      "Close CMake Window",
    },
  },
}

M.coding = {
  plugin = true,
  n = {
    ["<F4>"] = {
      "<cmd> ClangdSwitchSourceHeader <CR>",
      "Switch Source/Header",
    },
    ["<leader>ci"] = {
      "<cmd> Generate implementations <CR>",
      "Generate implementations",
    },
    ["<leader>cd"] = {
      "<cmd> Generate declarations <CR>",
      "Generate declarations",
    },
  }
}

return M
