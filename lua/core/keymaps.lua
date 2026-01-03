local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save / quit
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")

-- File explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")

-- LSP
map("n", "gd", vim.lsp.buf.definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "K", vim.lsp.buf.hover)

--------------------------------------------------
-- FILES / NAVIGATION (VS Code style)
--------------------------------------------------

-- Ctrl+P → Quick file open
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)

-- Ctrl+Shift+F → Global search
map("n", "<C-S-f>", "<cmd>Telescope live_grep<cr>", opts)

-- Ctrl+B → Toggle file explorer
map("n", "<C-b>", "<cmd>NvimTreeToggle<cr>", opts)

-- Ctrl+Tab → Next buffer
map("n", "<C-Tab>", "<cmd>bnext<cr>", opts)

-- Ctrl+Shift+Tab → Previous buffer
map("n", "<C-S-Tab>", "<cmd>bprevious<cr>", opts)

--------------------------------------------------
-- EDITING
--------------------------------------------------

-- Ctrl+S → Save
map({ "n", "i" }, "<C-s>", "<cmd>w<cr>", opts)

-- Ctrl+Z → Undo (already default, but explicit)
map("n", "<C-z>", "u", opts)

--------------------------------------------------
-- CODE NAVIGATION (Rider / VS Code feel)
--------------------------------------------------

-- F12 → Go to definition
map("n", "<F12>", vim.lsp.buf.definition, opts)

-- Alt+Enter → Code actions (Quick Fix)
map("n", "<A-CR>", vim.lsp.buf.code_action, opts)

-- Shift+F12 → Find references
map("n", "<S-F12>", vim.lsp.buf.references, opts)

-- Ctrl+. → Code actions (VS Code habit)
map("n", "<C-.>", vim.lsp.buf.code_action, opts)

-- Alt+Left → Navigate back (Rider style)
map("n", "<A-Left>", "<C-o>", opts)

-- Alt+Right → Navigate forward (Rider style)
map("n", "<A-Right>", "<C-i>", opts)

--------------------------------------------------
-- SEARCH / SYMBOLS
--------------------------------------------------

-- Ctrl+Shift+O → Go to symbol in file
map("n", "<C-S-o>", "<cmd>Telescope lsp_document_symbols<cr>", opts)

-- Ctrl+T → Go to symbol in workspace
map("n", "<C-t>", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)

--------------------------------------------------
-- FORMATTING
--------------------------------------------------

-- Ctrl+Shift+I → Format document
map("n", "<C-S-i>", function()
  vim.lsp.buf.format()
end, opts)

--------------------------------------------------
-- DIAGNOSTICS
--------------------------------------------------

-- F8 → Next diagnostic (VS Code)
map("n", "<F8>", vim.diagnostic.goto_next, opts)

-- Shift+F8 → Previous diagnostic
map("n", "<S-F8>", vim.diagnostic.goto_prev, opts)

-- Ctrl+Shift+M → Show diagnostics (Problems panel)
map("n", "<C-S-m>", "<cmd>Telescope diagnostics<cr>", opts)

-- Leader shortcuts
map("n", "<leader>d", vim.diagnostic.open_float, opts)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)

--------------------------------------------------
-- HOVER / DOCS
--------------------------------------------------

-- Ctrl+K Ctrl+I → Hover docs (VS Code)
map("n", "<C-k><C-i>", vim.lsp.buf.hover, opts)


-- Leader-based fallbacks
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>f", vim.lsp.buf.format, opts)


-- Window navigation (Ctrl + Arrow keys)
vim.keymap.set("n", "<C-Left>", "<C-w>h")
vim.keymap.set("n", "<C-Down>", "<C-w>j")
vim.keymap.set("n", "<C-Up>", "<C-w>k")
vim.keymap.set("n", "<C-Right>", "<C-w>l")

-- Resize windows
vim.keymap.set("n", "<C-A-Left>", "<cmd>vertical resize -5<cr>")
vim.keymap.set("n", "<C-A-Right>", "<cmd>vertical resize +5<cr>")
vim.keymap.set("n", "<C-A-Up>", "<cmd>resize +5<cr>")
vim.keymap.set("n", "<C-A-Down>", "<cmd>resize -5<cr>")

-- Toggle solution explorer
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<cr>")


