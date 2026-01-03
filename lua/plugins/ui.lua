vim.cmd("colorscheme tokyonight")

require("nvim-tree").setup({
  view = {
    width = 35,
    side = "left",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

require("lualine").setup()

