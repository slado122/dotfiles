local generic_opts_any = require('keymappings.common').generic_opts_any

vim.api.nvim_set_keymap('n', '<Leader>dc', ":lua require'dap'.continue()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>do', ":lua require'dap'.step_over()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>di', ":lua require'dap'.step_into()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>dO', ":lua require'dap'.step_out()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>dB', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>dr', ":lua require'dap'.repl.open()<CR>", generic_opts_any)
vim.api.nvim_set_keymap('n', '<Leader>dl', ":lua require'dap'.run_last()<CR>", generic_opts_any)
