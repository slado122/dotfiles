generic_opts_any = require('keymappings.common').generic_opts_any

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', generic_opts_any)

vim.api.nvim_set_keymap('n', '<Leader>tn', ':tabnew<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>tl', ':tabnext<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>th', ':tabprev<CR>', generic_opts_any)

vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', generic_opts_any)

vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':w!<CR>', generic_opts_any)
vim.api.nvim_set_keymap('i', ';;', '<Esc>', generic_opts_any)

vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +2<CR>', generic_opts_any)
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -2<CR>', generic_opts_any)

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', generic_opts_any)
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', generic_opts_any)
