require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright" }
vim.lsp.enable(servers)

-- Pyright LSP settings
vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "basic",
      },
    },
  },
})
