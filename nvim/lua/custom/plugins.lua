local plugins = {
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
    "danymat/neogen",
    lazy = false,
    config = function()
      require("neogen").setup({
        enabled = true,
      })
      require("core.utils").load_mappings("doxygen")
    end,
    -- Uncomment next line if you want to follow only stable versions
    version = "*"
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.none-ls"
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
        "clang-format",
        "cpptools",
        "lua-language-server",
        "vim-language-server",
      }
    }
  }
}
return plugins
