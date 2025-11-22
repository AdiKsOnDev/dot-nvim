local configs = require("plugins.configs.lspconfig")
local capabilities = configs.capabilities

local register_lsp = vim.lsp.config
local servers = { "pyright", "biome", "html", "cssls", "ts_ls", "clangd", "jdtls", "rust_analyzer", "marksman", "qmlls" }

for _, lsp in ipairs(servers) do
  register_lsp[lsp] = {
    on_attach = configs.on_attach,
    capabilities = capabilities,
  }
  vim.lsp.enable(lsp)
end
