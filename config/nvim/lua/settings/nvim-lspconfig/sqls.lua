-- Add additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').sqls.setup {
  capabilities = capabilities
}
