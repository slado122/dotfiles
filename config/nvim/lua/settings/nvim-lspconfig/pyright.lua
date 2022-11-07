vim.g["python3_host_prog"] = "/usr/bin/python3"

-- Add additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
