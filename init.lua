-- Set leader key early
vim.g.mapleader = " "

-- Core editor behavior
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Plugins
require("plugins.init")

