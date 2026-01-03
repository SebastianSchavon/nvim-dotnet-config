local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs / indentation (C# style)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- UI
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Clipboard
opt.clipboard = "unnamedplus"

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300

