local M = {
  { "nvim-lualine/lualine.nvim" },              -- Statusline
  { "akinsho/bufferline.nvim" },                -- Buffer tabs
  { "rcarriga/nvim-notify" },                   -- Notifications
  { "lukas-reineke/indent-blankline.nvim" },    -- Indentation guides
  { "rafi/awesome-vim-colorschemes" },
  { "sainnhe/gruvbox-material" },

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

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
  }, -- Enhanced notifications

  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern"
    },
    event = "VeryLazy"
  }, -- Show possible keybindings

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = { backdrop = 0.95, height = 0.9 },
      plugins = { tmux = { enabled = true } },
    },
  }, -- Distraction-free mode

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

  { "folke/todo-comments.nvim" }, -- Highlights TODOs, FIXMEs, etc.
  {
    "aznhe21/actions-preview.nvim",
    keys = { { ",ca", mode = { "v", "n" } } },
    config = function() vim.keymap.set({ "v", "n" }, ",ca", require("actions-preview").code_actions) end,
  }, -- Show available code actions

  {
    "ziontee113/icon-picker.nvim",
    event = "VeryLazy",
    config = function() require("icon-picker").setup({ disable_legacy_commands = true }) end,
  },
}

return M
