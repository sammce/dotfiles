require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'python',
        'help',
        'vim',
        'comment',
        'lua',
        'typescript',
        'javascript',
        'svelte'
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}

vim.api.nvim_set_hl(0, "@property", {link = "cssProperty"})
