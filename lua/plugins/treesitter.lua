local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    "c_sharp",
    "lua",
    "json",
    "yaml",
    "markdown",
  },
  highlight = { enable = true },
  indent = { enable = true },
})

