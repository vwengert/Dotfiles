local plugins = {
  {
    "cdelledonne/vim-cmake",
    event = "VeryLazy",
    config = function()
      require("core.utils").load_mappings("cmake")
      vim.g.cmake_link_compile_commands=1
      vim.g.cmake_build_dir_location="build"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "VeryLazy",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
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
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build =
      function() vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      require("core.utils").load_mappings("persistence")
    }
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require('auto-session').setup({
        auto_session_suppress_dirs={ '~/', '~/Downloads', '/'},
        session_lens  = {
          buftypes_to_ignore = {},
          load_on_setup = true,
          theme_conf = { border = true },
          previewer = false,
        },
       require("core.utils").load_mappings("auto_session")
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
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
        "cpptools",
        "lua-language-server",
        "vim-language-server",
      }
    }
  }
}
return plugins
