local M = {
  { "nvim-lua/plenary.nvim" },       -- Required by multiple plugins (helper functions)
  { "nvim-tree/nvim-web-devicons" }, -- Icons for UI elements
  { "MunifTanjim/nui.nvim" },        -- UI components for other plugins
  {
    "nvim-treesitter/nvim-treesitter", -- Grammar parser
    event = "BufReadPost",
  },

  { "tpope/vim-fugitive" },        -- Git integration
  { "tpope/vim-surround" },        -- Modify surrounding characters
  { "tpope/vim-commentary" },      -- Comment code easily
  { "tpope/vim-eunuch" },          -- Unix commands in Vim
  { "machakann/vim-highlightedyank" },
  { "lewis6991/gitsigns.nvim" },   -- Show Git diffs in the gutter
  { "jiangmiao/auto-pairs" },      -- Auto-close brackets & quotes
  { "akinsho/git-conflict.nvim" }, -- VSCode-style Git conflict resolution
  { "tpope/vim-abolish" },         -- Enhanced substitutions
  { "nmac427/guess-indent.nvim" }, -- Auto-detect indentation
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
  },

  { "sammce/fleeting.nvim" },     -- Tracks time spent in Neovim

  {
    "rmagatti/auto-session",
    lazy = false,
    opts = { suppressed_dirs = { "~", "~/Projects", "~/Downloads", "/" } },
  }, -- Auto-save & restore sessions
}

return M
