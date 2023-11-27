return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim' -- Plugin manager
    use 'nvim-lua/plenary.nvim' -- Honestly have no clue what this does but it a dependency of like 7 plugins

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter' -- Better syntax highlighting
    use 'nvim-treesitter/playground' -- Treesitter playground

    -- CMP/LSP
    use 'neovim/nvim-lspconfig' -- Makes LSP easier to configure
    use 'hrsh7th/cmp-nvim-lsp' -- Allows nvim-cmp to use LSP as a source
    use 'hrsh7th/cmp-buffer' -- Buffer completion
    use 'hrsh7th/cmp-path' -- Path completion
    use 'hrsh7th/cmp-cmdline' -- Command line completion
    use 'hrsh7th/nvim-cmp' -- Autocompletion menu for nvim
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- Displays function signatures with current param highlighted
    use 'MunifTanjim/prettier.nvim' -- Prettier for lua

    -- Mason LSP manager
    use 'williamboman/mason.nvim' -- Allows easy management of lsp server installations
    use 'williamboman/mason-lspconfig.nvim' -- To make mason work with lspconfig

    -- Telescope
    use 'nvim-telescope/telescope.nvim' -- Allows fuzzy finding of files, buffers, grep results, loads of shit.
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}  -- Fzf wrapper for telescope

    -- Luasnip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Nvim tree
    use 'nvim-tree/nvim-tree.lua' -- Sidebar file explorer
    use 'nvim-tree/nvim-web-devicons' -- Adds icons to nvim-tree

    -- Change vim ui
    use 'nvim-lualine/lualine.nvim' -- Statusline written in Lua
    use 'akinsho/bufferline.nvim' -- VSCode-esque 'tabs' (buffers, actually)
    use 'jose-elias-alvarez/null-ls.nvim' -- Allows non-lsp sources to contribute to diagnostics etc

    use 'preservim/tagbar' -- Shows tags -- i.e. functions, classes, etc. -- in a sidebar
    use 'glepnir/dashboard-nvim' -- Snazzy & customisable dashboard
    use 'folke/trouble.nvim' -- Show LSP diagnostics in a floating window

    -- Leetcode
    use 'Dhanus3133/Leetbuddy.nvim'

    -- Functionalities
    use 'tpope/vim-fugitive' -- Git wrapper for vim
    use 'tpope/vim-sensible' -- Sensible defaults
    use 'tpope/vim-surround' -- Ability to add, change or remove surrounding brackets/quotes
    use 'tpope/vim-commentary' -- Easy commenting of code
    use 'tpope/vim-eunuch' -- Unix helpers
    use 'airblade/vim-gitgutter' -- Show git diff in gutter
    use 'APZelos/blamer.nvim' -- Show git blame in virtual text
    use 'jiangmiao/auto-pairs' -- Auto close brackets and quotes
    use {'alvan/vim-closetag', ft = {'html', 'svelte', 'javascriptreact', 'typescriptreact'}} -- Auto close HTML tags
    use 'tpope/vim-abolish' -- Abbreviation, substitution and case conversion on crack
    use 'junegunn/vim-easy-align' -- Auto align variables around equal signs
    use 'akinsho/git-conflict.nvim'
    use 'lukas-reineke/indent-blankline.nvim'-- Indentation lines - vertical line down from each block
    use {'weilbith/nvim-code-action-menu', command = "CodeActionMenu"} -- Shows code actions in a floating window
    use 'psliwka/vim-smoothie' -- Smooth scrolling

    use {'RRethy/vim-hexokinase',  run = 'make hexokinase'} -- Show hex colors in code
    use 'KabbAmine/vCoolor.vim' -- Color picker
    use {'dkarter/bullets.vim', ft = {'markdown', 'text', 'asciidoc', 'journal'}} -- Auto continuation of bullet points
    use 'wellle/context.vim' -- Displays context of what block you're in (e.g. if, for, etc.)
    use 'rafamadriz/friendly-snippets' -- Huge list of predefined snippets
    use 'machakann/vim-highlightedyank' -- Highlights what text was yanked
    use 'rcarriga/nvim-notify' -- Snazzy notifications
    use 'MunifTanjim/eslint.nvim' -- Makes eslint setup easier
    use 'simrat39/rust-tools.nvim' -- Makes rust easier to setup
    use 'github/copilot.vim' -- AI Autocompletion
    use {'folke/twilight.nvim', cmd = 'Twilight'} -- Only highlight lines near cursor
    use 'Pocco81/true-zen.nvim' -- Distraction-free writing
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- Games
    use 'ThePrimeagen/vim-be-good'

    -- Aesthetics
    use { 'dracula/vim', as = 'dracula' } -- Dracula colorscheme
    use 'rafi/awesome-vim-colorschemes' -- A bunch of colorschemes
    use 'junegunn/vim-journal' -- Make text files look nicer
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'folke/todo-comments.nvim' -- Highlight TODOs, FIXMEs, etc.
    use "fladson/vim-kitty"
end)
