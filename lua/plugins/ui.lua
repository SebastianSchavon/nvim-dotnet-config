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

-- Open nvim-tree on startup if starting in a directory
local function open_nvim_tree()
  local stats = vim.loop.fs_stat(vim.fn.getcwd())
  if stats and stats.type == "directory" then
    require("nvim-tree.api").tree.open()
  end
end

vim.api.nvim_create_autocmd("VimEnter", { callback = open_nvim_tree })

