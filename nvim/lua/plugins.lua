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

local html_like = {
  'html', 'svelte', 'javascriptreact', 'typescriptreact', 'htmldjango', 'vue'
}

require("lazy").setup({
  'nvim-lua/plenary.nvim', -- Honestly have no clue what this does but it a dependency of like 7 plugins

  -- Treesitter
  'nvim-treesitter/nvim-treesitter', -- Better syntax highlighting

  -- CMP/LSP
  'neovim/nvim-lspconfig',               -- Makes LSP easier to configure
  'hrsh7th/cmp-nvim-lsp',                -- Allows nvim-cmp to use LSP as a source
  'hrsh7th/cmp-buffer',                  -- Buffer completion
  'hrsh7th/cmp-path',                    -- Path completion
  'hrsh7th/nvim-cmp',                    -- Autocompletion menu for nvim
  'hrsh7th/cmp-nvim-lsp-signature-help', -- Displays function signatures with current param highlighted
  'MunifTanjim/prettier.nvim',           -- Prettier for lua

  -- Mason LSP manager
  'williamboman/mason.nvim',           -- Allows easy management of lsp server installations
  'williamboman/mason-lspconfig.nvim', -- To make mason work with lspconfig

  -- Telescope
  'nvim-telescope/telescope.nvim', -- Allows fuzzy finding of files, buffers, grep results, loads of shit.

  -- Luasnip
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  {
    'rmagatti/auto-session',
    lazy = false,
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  },

  -- Nvim tree
  'nvim-tree/nvim-web-devicons', -- Adds icons to nvim-tree

  -- Change vim ui
  'nvim-lualine/lualine.nvim',       -- Statusline written in Lua
  'akinsho/bufferline.nvim',         -- VSCode-esque 'tabs' (buffers, actually)
  'jose-elias-alvarez/null-ls.nvim', -- Allows non-lsp sources to contribute to diagnostics etc

  -- 'glepnir/dashboard-nvim',                                                                      -- Snazzy & customisable dashboard
  { 'folke/trouble.nvim',  opts = {}, cmd = "Trouble" }, -- Show LSP diagnostics in a floating window

  -- Functionalities
  'tpope/vim-fugitive',                                                          -- Git wrapper for vim
  'tpope/vim-sensible',                                                          -- Sensible defaults
  'tpope/vim-surround',                                                          -- Ability to add, change or remove surrounding brackets/quotes
  'tpope/vim-commentary',                                                        -- Easy commenting of code
  'tpope/vim-eunuch',                                                            -- Unix helpers
  'airblade/vim-gitgutter',                                                      -- Show git diff in gutter
  'jiangmiao/auto-pairs',                                                        -- Auto close brackets and quotes
  'tpope/vim-abolish',                                                           -- Abbreviation, substitution and case conversion on crack
  'akinsho/git-conflict.nvim',                                                   -- Show VSCode like git merge conflicts
  'lukas-reineke/indent-blankline.nvim',                                         -- Indentation lines - vertical line down from each block
  'psliwka/vim-smoothie',                                                        -- Smooth animations when scrolling

  'KabbAmine/vCoolor.vim',                                                       -- Color picker
  { 'dkarter/bullets.vim', ft = { 'markdown', 'text', 'asciidoc', 'journal' } }, -- Auto continuation of bullet points
  'wellle/context.vim',                                                          -- Displays context of what block you're in (e.g. if, for, etc.)
  'rafamadriz/friendly-snippets',                                                -- Huge list of predefined snippets
  'machakann/vim-highlightedyank',                                               -- Highlights what text was yanked
  'rcarriga/nvim-notify',                                                        -- Snazzy notifications
  { 'simrat39/rust-tools.nvim', ft = 'rust' },
  'github/copilot.vim',                                                          -- AI Autocompletion
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 0.95,
        height = 0.9
      },
      plugins = {
        alacritty = {
          enabled = true,
          font = "20"
        },
        tmux = {
          enabled = true
        },
      }
    }
  },
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end
  },

  'nmac427/guess-indent.nvim',
  'stevearc/dressing.nvim',

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function()
          require 'window-picker'.setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
          })
        end,
      },
    },
  },

  { 'leafOfTree/vim-svelte-plugin', ft = 'svelte' },

  'onsails/lspkind.nvim', -- Adds icons to lsp completion items

  -- Comment.nvim
  -- 'numToStr/Comment.nvim',

  -- Window for picking emojis
  {
    "ziontee113/icon-picker.nvim",
    config = function()
        require("icon-picker").setup({ disable_legacy_commands = true })

        -- local opts = { noremap = true, silent = true }

        -- vim.keymap.set("n", "<Leader>i", "<cmd>IconPickerNormal<cr>", opts)
        -- vim.keymap.set("n", "<Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
        -- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
    end
  },

  -- emmet-vim
  { 'mattn/emmet-vim',              ft = html_like },

  -- 
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  -- nvim-ts-autotag
  {
    'windwp/nvim-ts-autotag',
    ft = html_like,
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },

  -- nvim-ts-context-commentstring
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- neodev
  { "folke/neodev.nvim", opts = {} },

  -- telescope-fzf-native.nvim
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

  -- nui.nvim
  'MunifTanjim/nui.nvim',

  {
    "aznhe21/actions-preview.nvim",
    config = function()
      vim.keymap.set({ "v", "n" }, ",ca", require("actions-preview").code_actions)
    end,
  },

  -- Aesthetics
  'junegunn/vim-journal',          -- Make text files look nicer
  'folke/tokyonight.nvim',
  'folke/todo-comments.nvim',      -- Highlight TODOs, FIXMEs, etc.

  {
    'stevearc/aerial.nvim',
    opts = {
      layout = {
        default_direction = "left",
        min_width = 20,
      }
    },
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  "sammce/fleeting.nvim",

  {
    "davidmh/mdx.nvim",
    config = true,
    dependencies = {"nvim-treesitter/nvim-treesitter"}
  },

  "averms/black-nvim",

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {
      win = {
        border = "single", -- none, single, double, shadow
      },
    }
  }
})
