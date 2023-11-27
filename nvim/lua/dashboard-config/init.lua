local home = os.getenv('HOME')
local db = require('dashboard')

local lolcat_with_animation = 'lolcat -F 0.1 -S 65 -a -d 4 -s 50'
local lolcat_plain = 'lolcat -F 0.1 -S 11'

-- db.session_directory = home .. '/.config/nvim/session'

db.setup({
    preview = {
        command = 'cat | ' .. lolcat_with_animation,
        file_path = home .. '/.config/nvim/static/guitar.cat',
        file_height = 16,
        file_width = 78,
    },
    config = {
        week_header = {
            enable = true,
        },
        shortcut = {
            {
                icon = '  ',
                desc = 'New  Buffer',
                action = ':enew',
                key = 'n',
                group = "@function.builtin"
            },
            {
                icon = '  ',
                desc = 'Find  File',
                action = 'Telescope find_files',
                key = 'f',
                group = "@exception"
            },
            {
                icon = "  ",
                desc = "Browse dotfiles",
                action = "Telescope find_files cwd=~/.config/nvim/ search_dirs=lua,init.lua",
                key = 'c',
                group = "@field"
            },
            {
                icon = "  ",
                desc = "Install Plugins",
                action = ":PackerInstall",
                key = 'i',
                group = 'DiagnosticWarning',
            },
        },
        footer = function()
            local footer = {}

            -- for str in string.gmatch(vim.fn.system('fortune -n 50'), '[^]+') do
            --    table.insert(footer, str)
            -- end


            return footer
        end,
    }
})

