-- Add additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require('lspconfig').sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
	  Lua = {
		  runtime = {version = 'LuaJIT', path = runtime_path},
		  diagnostics = {globals = {'vim'}},
		  workspace = {library = vim.api.nvim_get_runtime_file("", true)},
		  telemetry = {enable = false}
	  }
  }
}
