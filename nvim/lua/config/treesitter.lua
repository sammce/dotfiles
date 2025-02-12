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

vim.api.nvim_set_hl(0, "@property", { link = "cssProperty" })
