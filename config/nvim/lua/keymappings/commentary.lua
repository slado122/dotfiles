generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', '<Leader>/', ':Commentary<CR>', generic_opts_any)
vim.api.nvim_set_keymap('v', '<Leader>/', ':Commentary<CR>', generic_opts_any)
