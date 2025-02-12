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
  'todo-comments',
  'conflict',
  'tokyonight',
  'neo-tree',
}

for _, config in ipairs(configurations) do
  cfg(config)
end
