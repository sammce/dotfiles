local prettier = require("prettier")

prettier.setup {
    bin = "prettier",
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "rust",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
        "svelte",
        "r"
    },
    cli_options = {
        config_precedence="file-override",
    },
    ["null-ls"] = {
        condition = function()
            return true
          -- return prettier.config_exists({
          --   -- if `false`, skips checking `package.json` for `"prettier"` key
          --   check_package_json = true,
          -- })
        end,
        runtime_condition = function(params)
          -- return false to skip running prettier
          return true
        end,
        -- timeout = 5000,
      }
}
