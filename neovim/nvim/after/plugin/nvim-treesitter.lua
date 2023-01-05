require('nvim-treesitter.configs').setup {

    ensure_installed = {"lua", "typescript"},

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true,
    }
}
