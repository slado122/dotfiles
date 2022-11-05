vim.g["python3_host_prog"] = "/usr/bin/python3"

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
