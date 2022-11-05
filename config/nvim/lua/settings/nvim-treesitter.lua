require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "python", "bash", "c", "cpp", "json", "toml", "yaml", "rust",
        "solidity", "sql", "lua", "javascript"
    },
    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = true
    }
}
