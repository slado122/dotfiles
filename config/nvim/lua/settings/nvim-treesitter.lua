require('nvim-treesitter.configs').setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = false
    }
}

require"nvim-treesitter.parsers".get_parser_configs().solidity = {
    install_info = {
        url = "https://github.com/JoranHonig/tree-sitter-solidity",
        files = {"src/parser.c"},
        requires_generate_from_grammar = true
    },
    filetype = 'solidity'
}
