require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c_sharp",
    "lua",
    "json",
    "yaml",
    "markdown",
  },
  highlight = { enable = true },
})

