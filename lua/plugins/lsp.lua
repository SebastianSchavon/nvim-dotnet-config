local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup({
  cmd = { "omnisharp" },
  enable_import_completion = true,
  enable_roslyn_analyzers = true,
})

