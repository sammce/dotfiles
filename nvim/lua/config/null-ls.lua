local null_ls = require("null-ls")

-- local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })

-- Rustaceanvim is weird with null-ls
-- vim.cmd [[ autocmd BufWritePre *.rs lua vim.lsp.buf.format() ]]

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    -- null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.prettier,
  },
  -- on_attach = function(client, bufnr)
  --   -- if client.supports_method("textDocument/formatting") then
  --     -- format on save
  --     vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       buffer = bufnr,
  --       group = group,
  --       callback = function()
  --         vim.lsp.buf.format()
  --       end,
  --       desc = "[lsp] format on save",
  --     })
  --   end
  -- end,
})
