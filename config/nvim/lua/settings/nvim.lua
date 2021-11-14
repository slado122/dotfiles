vim.cmd [[
    syntax enable
    filetype plugin indent on
    set colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey
    colorscheme gruvbox

    set tabstop=4
    set softtabstop=4
    set shiftwidth=2
]]

vim.api.nvim_set_option('background', 'dark')
vim.api.nvim_win_set_option(0, 'relativenumber', true)
vim.api.nvim_win_set_option(0, 'number', true)
vim.api.nvim_set_option('hlsearch', false)
vim.api.nvim_set_option('hidden', true)
vim.api.nvim_set_option('errorbells', false)
vim.api.nvim_buf_set_option(0, 'expandtab', true)
vim.api.nvim_buf_set_option(0, 'smartindent', true)
vim.api.nvim_buf_set_option(0, 'autoindent', true)
vim.api.nvim_set_option('clipboard', 'unnamedplus')
vim.api.nvim_win_set_option(0, 'wrap', false)
vim.api.nvim_set_option('smartcase', true)
vim.api.nvim_set_option('incsearch', true)
vim.api.nvim_set_option('undodir', vim.fn.stdpath('config') .. '/undodir')
vim.api.nvim_buf_set_option(0, 'undofile', true)
vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('showmode', false)
