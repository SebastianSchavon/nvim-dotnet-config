-- Load lazy.nvim
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({

  -- UI
  { "folke/tokyonight.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-lualine/lualine.nvim" },

  -- Search
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Syntax
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- LSP
  { "neovim/nvim-lspconfig" },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
    },
  },

  -- Git
  { "lewis6991/gitsigns.nvim" },

  -- Debugging
  { "mfussenegger/nvim-dap" },
})

