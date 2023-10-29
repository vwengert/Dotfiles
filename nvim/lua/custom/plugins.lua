local plugins = {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "VeryLazy",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
      require("core.utils").load_mappings("refactoring")
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
      require("core.utils").load_mappings("git")
    end,
  },
  {
    "eriks47/generate.nvim",
    event = "VeryLazy",
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
  {
    "machakann/vim-highlightedyank",
    lazy = false,
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require('illuminate').configure({})
    end
  },
  {
    "tomasky/bookmarks.nvim",
    event = "VeryLazy",
    config = function()
      require('bookmarks').setup({
        -- sign_priority = 8,  --set bookmark sign priority to cover other sign
        save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
        keywords =  {
          ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
          ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
          ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
          ["@n"] = "", -- mark annotation startswith @n ,signs this icon as `Note`
        },
        on_attach = function(bufnr)
          local bm = require "bookmarks"
          local map = vim.keymap.set
          map("n","mm",bm.bookmark_toggle) -- add or remove bookmark at current line
          map("n","mi",bm.bookmark_ann) -- add or edit mark annotation at current line
          map("n","mc",bm.bookmark_clean) -- clean all marks in local buffer
          map("n","mn",bm.bookmark_next) -- jump to next mark in local buffer
          map("n","mp",bm.bookmark_prev) -- jump to previous mark in local buffer
          map("n","ml",bm.bookmark_list) -- show marked file list in quickfix windows
        end
      })
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build =
      function() vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "cdelledonne/vim-cmake",
    event = "VeryLazy",
    config = function()
      require("core.utils").load_mappings("cmake")
      vim.g.cmake_link_compile_commands=1
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap"
    },
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb",
      }
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("custom.configs.dap")
      require("core.utils").load_mappings("dap")
      require('dap.ext.vscode').load_launchjs( nil, { codelldb = {'c', 'cpp'}})
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      require("core.utils").load_mappings("coding")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "cpptools",
        "cppman",
      }
    }
  }
}
return plugins
