local generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', '<Leader>hw', ':HopWord<CR>', generic_opts_any)
