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
    ["<leader>cc"] = {
      "<cmd> ClangdSwitchSourceHeader <CR>",
      "Switch Source/Header",
    },
  }
}

M.git = {
  plugin = true,
  n = {
    ["<leader>gl"] = {
      "<cmd> LazyGit <CR>",
      "open LazyGit",
    },
    ["<leader>ga"] = {
      function()
        vim.api.nvim_command('let res = system("git blame ".expand("%"))')
        vim.api.nvim_command('vnew')
        vim.api.nvim_command('put=res')
      end,
      "Git blame File",
    },
    ["<leader>gf"] = {
      "<cmd> LazyGitFilterCurrentFile <CR>",
      "open Git Current File",
    },
  }
}
return M
