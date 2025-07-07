require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.config("jinja_lsp", {
  filetypes = { "html", "htmldjango", "python" }  
})

vim.lsp.config("html", {
  filetypes = { "html", "htmldjango", "javascriptreact", "typescriptreact" }
})

vim.lsp.config("tailwindcss", {
  filetypes = { "html", "htmldjango", "javascriptreact", "typescriptreact", "css", "scss" }
})

vim.lsp.config("cssls", {
  settings = {
    css = {
      lint = {
        unknownAtRules = 'ignore',
      },
    },
  },
})
