require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `cssls`:
  ["cssls"] = function()
    require("lspconfig").cssls.setup {
      settings = {
        css = {
          lint = {
            unknownAtRules = 'ignore',
          },
        },
      },
    }
  end,
  ["ts_ls"] = function() end
}
