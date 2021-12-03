require'lspconfig'.ltex.setup {
  cmd = { vim.fn.stdpath('data') .. '/lsp_servers/ltex/ltex-ls' }
}
