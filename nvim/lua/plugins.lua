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

  -- 🛠️ Core Dependencies
  { "nvim-lua/plenary.nvim" },  -- Required by multiple plugins
  { "nvim-tree/nvim-web-devicons" }, -- Icons for UI elements
  { "MunifTanjim/nui.nvim" }, -- UI components for other plugins

  -- 🏗️ Treesitter for Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost", -- Load only when a file is opened
  },

  -- ⚡ LSP Configuration
  { "neovim/nvim-lspconfig" }, -- Simplifies LSP setup
  { "williamboman/mason.nvim", config = true }, -- LSP server manager
  { "williamboman/mason-lspconfig.nvim" }, -- Mason integration with LSPConfig

  -- 🐞 Debug
  { "mfussenegger/nvim-dap" },
  { "jay-babu/mason-nvim-dap.nvim" },
  { "nvim-neotest/nvim-nio" },
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },

  -- 🔮 Completion & Snippets
  { "hrsh7th/nvim-cmp", event = "InsertEnter" }, -- Auto-completion engine
  { "hrsh7th/cmp-nvim-lsp" }, -- LSP as a completion source
  { "hrsh7th/cmp-buffer" }, -- Buffer completions
  { "hrsh7th/cmp-path" }, -- Path completions
  { "hrsh7th/cmp-nvim-lsp-signature-help" }, -- Show function signatures
  { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" }, -- Snippet engine
  { "rafamadriz/friendly-snippets" }, -- VSCode snippets
  { "nvimtools/none-ls.nvim" }, -- Allows non-lsp sources to contribute to diagnostics etc
  { "folke/lazydev.nvim", ft = "lua" }, -- Sets up LSP for lua properly


  -- 🔍 Telescope (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- Faster searching

  -- FZF
  { 'junegunn/fzf' },
  { 'junegunn/fzf.vim' },


  -- 🎨 UI Enhancements
  { "folke/tokyonight.nvim", priority = 1000 }, -- Color scheme
  { "nvim-lualine/lualine.nvim" }, -- Statusline
  { "akinsho/bufferline.nvim" }, -- Buffer tabs
  { "rcarriga/nvim-notify" }, -- Notifications
  { "lukas-reineke/indent-blankline.nvim" }, -- Indentation guides
  { "rafi/awesome-vim-colorschemes" },
  { "sainnhe/gruvbox-material" },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {}},

  -- 🏗️ LSP & Code Navigation
  { "onsails/lspkind.nvim" }, -- Icons in LSP completion
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {},
  }, -- Show LSP diagnostics in a floating window
  {
    "stevearc/aerial.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = { layout = { default_direction = "left", min_width = 20 } },
  }, -- Function symbol outline

  -- 🛠️ QOL Plugins (Git, Comments, Formatting, etc.)
  { "tpope/vim-fugitive" }, -- Git integration
  { "tpope/vim-surround" }, -- Modify surrounding characters
  { "tpope/vim-commentary" }, -- Comment code easily
  { "tpope/vim-eunuch" }, -- Unix commands in Vim
  { "machakann/vim-highlightedyank" },
  { "lewis6991/gitsigns.nvim" }, -- Show Git diffs in the gutter
  { "jiangmiao/auto-pairs" }, -- Auto-close brackets & quotes
  { "akinsho/git-conflict.nvim" }, -- VSCode-style Git conflict resolution
  { "tpope/vim-abolish" }, -- Enhanced substitutions
  { "nmac427/guess-indent.nvim" }, -- Auto-detect indentation
  { 'MunifTanjim/prettier.nvim' }, -- Prettier support
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- ✨ Fancy UI Plugins
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
  }, -- Enhanced notifications
  { 
    "folke/which-key.nvim", 
    opts = {
      preset = "modern"
    }, event = "VeryLazy" 
  }, -- Show possible keybindings
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = { backdrop = 0.95, height = 0.9 },
      plugins = { tmux = { enabled = true } },
    },
  }, -- Distraction-free mode

  -- 📜 Markdown & Writing
  { "iamcco/markdown-preview.nvim", ft = "markdown", run = "cd app && pnpm install" }, -- Live Markdown preview
  { "dkarter/bullets.vim", ft = { "markdown", "text", "asciidoc", "journal" } }, -- Bullet points in Markdown
  { "davidmh/mdx.nvim", dependencies = { "nvim-treesitter/nvim-treesitter" }, ft = "mdx" }, -- Treesitter for MDX

  -- 🚀 Programming Language Support
  {
    "mrcjkb/rustaceanvim",
    version = '^5', -- Recommended
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {}
  }, -- TypeScript support
  { "averms/black-nvim", ft = "python" }, -- Python formatter (Black)
  { "leafOfTree/vim-svelte-plugin", ft = "svelte" }, -- Svelte support

  -- 🏗️ Web Development
  { "mattn/emmet-vim", ft = html_like }, -- Emmet for fast HTML coding
  { "JoosepAlviste/nvim-ts-context-commentstring", ft = html_like }, -- Context-aware comments
  { "KabbAmine/vCoolor.vim" },
  {
    "windwp/nvim-ts-autotag",
    ft = html_like,
    config = function() require("nvim-ts-autotag").setup() end,
  }, -- Auto-close HTML tags

  -- 🖼️ Emoji & Icon Picker
  {
    "ziontee113/icon-picker.nvim",
    event = "VeryLazy",
    config = function() require("icon-picker").setup({ disable_legacy_commands = true }) end,
  },

  -- AI
  { "Exafunction/codeium.vim", event = "BufReadPre" }, -- AI code completion

  -- 🖥️ Window & Session Management
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = { suppressed_dirs = { "~", "~/Projects", "~/Downloads", "/" } },
  }, -- Auto-save & restore sessions
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "s1n7ax/nvim-window-picker",
      config = function()
        require("window-picker").setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            bo = { filetype = { "neo-tree", "notify" }, buftype = { "terminal", "quickfix" } },
          },
        })
      end,
    },
  }, -- File explorer replacement

  -- ⏳ Miscellaneous Enhancements
  { "sammce/fleeting.nvim" }, -- Tracks time spent in Neovim
  { "folke/todo-comments.nvim" }, -- Highlights TODOs, FIXMEs, etc.
  {
    "aznhe21/actions-preview.nvim",
    keys = { { ",ca", mode = { "v", "n" } } },
    config = function() vim.keymap.set({ "v", "n" }, ",ca", require("actions-preview").code_actions) end,
  }, -- Show available code actions

})

