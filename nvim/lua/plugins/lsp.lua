local M = {
  { "neovim/nvim-lspconfig", },                 -- Simplifies LSP setup
  { "williamboman/mason.nvim", config = true }, -- LSP server manager
  { "williamboman/mason-lspconfig.nvim" },      -- Mason integration with LSPConfig
  { "folke/lazydev.nvim", ft = "lua" },         -- Sets up LSP for lua properly
}

return M
