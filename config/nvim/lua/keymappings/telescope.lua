local generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', generic_opts_any)
