vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require'nvim-tree'.setup {
    git = {
        enable = true,
        ignore = true,
        timeout = 400,
    },
    renderer = {
        highlight_git = true,
        icons = {
            glyphs = {
                folder = {
                    arrow_open = "-",
                    arrow_closed = "+",
                },
            },
            git_placement = "after",
            modified_placement = "signcolumn"
        },
    },
    view = {
        float = {
            enable = false,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 30,
                height = 30,
                row = 1,
                col = 3,
            },
        },
    },
    filters = {
      dotfiles = true,
    },
}
