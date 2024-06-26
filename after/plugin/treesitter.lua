require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim" },

    sync_install = false,

    auto_install = false,

    ignore_install = {},

    highlight = {
        enable = true,

        disable = {},

        additional_vim_regex_highlighting = { "li", "fairy" },
    },
}
