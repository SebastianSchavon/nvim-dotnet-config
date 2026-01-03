vim.lsp.config.omnisharp = {
  cmd = { "omnisharp" },
  filetypes = { "cs", "vb" },
  root_markers = { "*.sln", "*.csproj", "omnisharp.json", "function.json" },
  settings = {
    enable_import_completion = true,
    enable_roslyn_analyzers = true,
  },
}

vim.lsp.enable("omnisharp")

