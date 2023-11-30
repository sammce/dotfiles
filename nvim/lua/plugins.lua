local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'nvim-lua/plenary.nvim', -- Honestly have no clue what this does but it a dependency of like 7 plugins

    -- Treesitter
    'nvim-treesitter/nvim-treesitter', -- Better syntax highlighting
    'nvim-treesitter/playground', -- Treesitter playground

    -- CMP/LSP
    'neovim/nvim-lspconfig', -- Makes LSP easier to configure
    'hrsh7th/cmp-nvim-lsp', -- Allows nvim-cmp to use LSP as a source
    'hrsh7th/cmp-buffer', -- Buffer completion
    'hrsh7th/cmp-path', -- Path completion
    'hrsh7th/cmp-cmdline', -- Command line completion
    'hrsh7th/nvim-cmp', -- Autocompletion menu for nvim
    'hrsh7th/cmp-nvim-lsp-signature-help', -- Displays function signatures with current param highlighted
    'MunifTanjim/prettier.nvim', -- Prettier for lua

    -- Mason LSP manager
    'williamboman/mason.nvim', -- Allows easy management of lsp server installations
    'williamboman/mason-lspconfig.nvim', -- To make mason work with lspconfig

    -- Telescope
    'nvim-telescope/telescope.nvim', -- Allows fuzzy finding of files, buffers, grep results, loads of shit.

    -- Luasnip
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    -- Nvim tree
    'nvim-tree/nvim-tree.lua', -- Sidebar file explorer
    'nvim-tree/nvim-web-devicons', -- Adds icons to nvim-tree

    -- Change vim ui
    'nvim-lualine/lualine.nvim', -- Statusline written in Lua
    'akinsho/bufferline.nvim', -- VSCode-esque 'tabs' (buffers, actually)
    'jose-elias-alvarez/null-ls.nvim', -- Allows non-lsp sources to contribute to diagnostics etc

    'preservim/tagbar', -- Shows tags -- i.e. functions, classes, etc. -- in a sidebar
    'glepnir/dashboard-nvim', -- Snazzy & customisable dashboard
    'folke/trouble.nvim', -- Show LSP diagnostics in a floating window

    -- Functionalities
    'tpope/vim-fugitive', -- Git wrapper for vim
    'tpope/vim-sensible', -- Sensible defaults
    'tpope/vim-surround', -- Ability to add, change or remove surrounding brackets/quotes
    'tpope/vim-commentary', -- Easy commenting of code
    'tpope/vim-eunuch', -- Unix helpers
    'airblade/vim-gitgutter', -- Show git diff in gutter
    'APZelos/blamer.nvim', -- Show git blame in virtual text
    'jiangmiao/auto-pairs', -- Auto close brackets and quotes
    {'alvan/vim-closetag', ft = {'html', 'svelte', 'javascriptreact', 'typescriptreact'}}, -- Auto close HTML tags
    'tpope/vim-abolish', -- Abbreviation, substitution and case conversion on crack
    'junegunn/vim-easy-align', -- Auto align variables around equal signs
    'akinsho/git-conflict.nvim', -- Show VSCode like git merge conflicts
    'lukas-reineke/indent-blankline.nvim', -- Indentation lines - vertical line down from each block
    'psliwka/vim-smoothie', -- Smooth animations when scrolling

    'KabbAmine/vCoolor.vim', -- Color picker
    {'dkarter/bullets.vim', ft = {'markdown', 'text', 'asciidoc', 'journal'}}, -- Auto continuation of bullet points
    'wellle/context.vim', -- Displays context of what block you're in (e.g. if, for, etc.)
    'rafamadriz/friendly-snippets', -- Huge list of predefined snippets
    'machakann/vim-highlightedyank', -- Highlights what text was yanked
    'rcarriga/nvim-notify', -- Snazzy notifications
    'MunifTanjim/eslint.nvim', -- Makes eslint setup easier
    'simrat39/rust-tools.nvim', ft = 'rust',
    'github/copilot.vim', -- AI Autocompletion
    {'folke/twilight.nvim', cmd = 'Twilight'}, -- Only highlight lines near cursor
    'Pocco81/true-zen.nvim', -- Distraction-free writing
    {"iamcco/markdown-preview.nvim", 
      run = function() vim.fn["mkdp#util#install"]() end},

    -- Games
    'ThePrimeagen/vim-be-good',

    -- Leetcode
    'Dhanus3133/Leetbuddy.nvim',

    -- Aesthetics
    'rafi/awesome-vim-colorschemes', -- A bunch of colorschemes
    'junegunn/vim-journal', -- Make text files look nicer
    'folke/tokyonight.nvim',
    'folke/todo-comments.nvim', -- Highlight TODOs, FIXMEs, etc.
    'fladson/vim-kitty', -- syntax highlighting for kitty.conf
})
