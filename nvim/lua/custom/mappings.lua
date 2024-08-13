local M = {}

M.cmake = {
  n = {
    ["<leader>mb"] = {
      function()
        vim.api.nvim_command('wa')
        require("nvterm.terminal").send("./hmiBuild.sh -p mt", "horizontal")
      end,
      "build mt debug",
    },
    ["<leader>mr"] = {
      function()
        vim.api.nvim_command('wa')
        require("nvterm.terminal").send("./hmiBuild.sh -p mt -r y", "horizontal")
      end,
      "build and run mt debug",
    },
    ["<leader>md"] = {
      function()
        vim.api.nvim_command('wa')
        require("nvterm.terminal").send("./hmiBuild.sh -p mt -r y -a device -i 10.202.20.102", "horizontal")
      end,
      "build and deplodeploy mt debug",
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
        vim.api.nvim_command('redir >> ~/.breakpoints')
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

M.auto_session = {
  plugin = true,
  n = {
    ["<leader>qf"] = {
      function()
        require("auto-session.session-lens").search_session()
      end,
      "Select session",
    },
  }
}

M.doxygen = {
  plugin = true,
  n = {
    ["<leader>cd"] = {
      function()
        require("neogen").generate()
      end,
      "add doxygen style comment",
    },
  }
}

return M
