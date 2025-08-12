require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "basedpyright",
    "eslint",
    "cssls",
    "tailwindcss",
    "jinja_lsp",
    "ruff",
    "ts_ls",
    "dockerls",
  }
})

vim.lsp.config("jinja_lsp", {
  filetypes = { "html", "htmldjango", "python" }
})

vim.lsp.config("tailwindcss", {
  filetypes = { "html", "htmldjango", "javascriptreact", "typescriptreact", "css", "scss" }
})

vim.lsp.config("djlint", {
  filetypes = { "html", "htmldjango" },
})

vim.lsp.config("html", {
  filetypes = { "html", "htmldjango" },
  on_attach = function(client, _)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
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


vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
