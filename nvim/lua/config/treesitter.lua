require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'python',
    'vim',
    'comment',
    'lua',
    'typescript',
    'javascript',
    'svelte'
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  -- autotag = {
  --   enable = true,
  --   enable_rename = true,
  --   enable_close = false,
  -- },
  indent = {
    enable = true
  }
}

-- parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_config.jinja = {
--   filetype = "html"
-- }

vim.api.nvim_set_hl(0, "@property", { link = "cssProperty" })
