generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', '<Leader>gh', ':diffget //3<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>gu', ':diffget //2<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G<CR>', generic_opts_any)
