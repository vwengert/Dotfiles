local options = {
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile"},
  ensure_installed = { "lua",
    "cpp", "markdown", "markdown_inline",
    "bash", "java", "python" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
      selection_modes = {
        ['@parameter.outer'] = 'v',
        ['@function.outer'] = 'V',
        ['@class.outer'] = '<c-v>',
      },
    },
  },
}

return options
