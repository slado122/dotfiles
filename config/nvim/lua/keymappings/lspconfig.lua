generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>rn', ':lua vim.lsp.buf.rename()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>[',
                        ':lua vim.lsp.diagnostic.goto_prev()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>]',
                        ':lua vim.lsp.diagnostic.goto_next()<CR>',
                        generic_opts_any)
vim.api.nvim_set_keymap('n', '<F2>', ':lua vim.lsp.buf.formatting()<CR>',
                        generic_opts_any)
