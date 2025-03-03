local function cfg(config)
  require(string.format("config/%s", config))
end

local configurations = {
  'null-ls',
  'diagnostics',
  'mason',
  'prettier',
  'nvim-cmp',
  'luasnip',
  'telescope',
  'indent',
  'treesitter',
  'lualine',
  'bufferline',
  'notify',
  'noice',
  'todo-comments',
  'conflict',
  'tokyonight',
  'neo-tree',
  'gitsigns'
}

for _, config in ipairs(configurations) do
  cfg(config)
end
