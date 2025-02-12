require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = '|',
        -- section_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        section_separators = "",
        disabled_filetypes = { 'NvimTree' },
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = {{'mode', right_padding = 2 }},
        lualine_b = {'branch', 'diff', {
                'diagnostics',
                sources = {'nvim_lsp'},
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
            }
        },
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat'},
        lualine_y = {'filetype'},
        lualine_z = {{'os.date("%-I:%M %p")', color = {gui='NONE'}, left_padding = 2 }}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {
        'fugitive',
        'nvim-tree',
    }
}
