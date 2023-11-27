require('eslint').setup {
    bin = 'eslint_d',
    code_actions = {
        enable = true,
        disable_rule_comment = {
          enable = true,
          location = "separate_line", -- or `same_line`
        },
    },
      diagnostics = {
        enable = true,
        run_on = "type", -- or `save`
      },
}
