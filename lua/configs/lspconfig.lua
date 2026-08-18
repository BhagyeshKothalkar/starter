require("nvchad.configs.lspconfig").defaults()

-- 1. Define custom options for clangd to prevent offset encoding warnings
vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

-- 2. Add "clangd" to your list of enabled servers
local servers = { "html", "cssls", "clangd", "rust_analyzer" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
