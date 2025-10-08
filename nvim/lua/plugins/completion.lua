local M = {
  { "hrsh7th/nvim-cmp",                   event = "InsertEnter" },           -- Auto-completion engine
  { "hrsh7th/cmp-nvim-lsp" },                                                -- LSP as a completion source
  { "hrsh7th/cmp-buffer" },                                                  -- Buffer completions
  { "hrsh7th/cmp-path" },                                                    -- Path completions
  { "hrsh7th/cmp-nvim-lsp-signature-help" },                                 -- Show function signatures
  { "L3MON4D3/LuaSnip",                   version = "v2.*",                                                 build = "make install_jsregexp" }, -- Snippet engine
  { "rafamadriz/friendly-snippets" },                                        -- VSCode snippets
  { "nvimtools/none-ls.nvim" },                                              -- Allows non-lsp sources to contribute to diagnostics etc

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- Faster searching

  { 'junegunn/fzf' },
  { 'junegunn/fzf.vim' },


  { "Exafunction/codeium.vim" }, -- AI code completion
}

return M
