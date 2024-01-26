local M = {}

M.cmake = {
  plugin = true,
  n = {
    ["<leader>mg"] = {
      "<cmd> CMakeGenerate -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 <CR>",
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
    ["<leader>ch"] = {
      function()
        vim.api.nvim_command('vertical term cppman <cword>')
      end,
      "Help from cppman",
    },
    ["<leader>db"] = {
      function()
        vim.api.nvim_command('redir >> .breakpints')
        vim.api.nvim_command('echo "break" join([expand("%"), line(".")], ":")')
        vim.api.nvim_command('redir END')
      end,
      "set breakpoint in .breakpoints",
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
        vim.api.nvim_command('vnew blame')
        vim.api.nvim_command('set buftype=nofile')
        vim.api.nvim_command('set bufhidden=hide')
        vim.api.nvim_command('set nobuflisted')
        vim.api.nvim_command('put=res')
        vim.api.nvim_command('goto 1')
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
