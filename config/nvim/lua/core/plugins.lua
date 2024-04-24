require('lazy').setup({
    { 'nvim-lua/plenary.nvim',             tag = 'v0.1.4' },
    { 'nvim-telescope/telescope.nvim',     tag = '0.1.6' },
    { "nvim-treesitter/nvim-treesitter",   tag = 'v0.9.2' },
    { 'VonHeikemen/lsp-zero.nvim',         branch = 'v3.x' },
    { 'williamboman/mason.nvim',           tag = 'v1.10.0' },
    { 'williamboman/mason-lspconfig.nvim', tag = 'v1.27.0' },
    { 'neovim/nvim-lspconfig',             tag = 'v0.1.7' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { "github/copilot.vim",                tag = 'v1.29.0' },
    { "vim-test/vim-test",                 tag = 'v2.1.0' },
    { "tpope/vim-commentary" },
    { "ellisonleao/gruvbox.nvim" },
    { "lewis6991/gitsigns.nvim",           tag = 'v0.8.0' },
    { 'L3MON4D3/LuaSnip' },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        }
    },
    {
        'kristijanhusak/vim-dadbod-ui',
        dependencies = {
            { 'tpope/vim-dadbod',                     lazy = true },
            { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        },
        cmd = {
            'DBUI',
            'DBUIToggle',
            'DBUIAddConnection',
            'DBUIFindBuffer',
        },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end,
    },
    { 'tpope/vim-fugitive', tag = 'v3.7' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
})
