local plugins = {
  {
    "cdelledonne/vim-cmake",
    event = "VeryLazy",
    config = function()
      require("core.utils").load_mappings("cmake")
      vim.g.cmake_link_compile_commands=1
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
        "cpptools",
      }
    }
  }
}
return plugins
