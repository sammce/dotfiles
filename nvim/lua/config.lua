--- Plugins
-- Autocomplete
require('lspconfig-config')
require('null-ls-config')
require('diagnostics-config')
require('mason-config')
require('prettier-config')
require('nvim-cmp-config')
require('luasnip-config')
require('eslint-config')

-- Misc
require('dashboard-config')
require('indent-config')
require('treesitter-config')
require('telescope-config')
require('lualine-config')
require('zen-config')
require('nvim-tree-config')
require('bufferline-config')
require('notify-config')
require('todo-comments-config')
require('conflict-config')
require('rust-config')
require('tokyonight-config')
require('leetbuddy-config')

-- Closetags
vim.g.closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
vim.g.closetag_filetypes = 'html,js'
vim.g.closetag_xhtml_filetype = 'xhtml,jsx,tsx'
vim.g.closetag_emptyTags_caseSensitive = true
vim.cmd [[
    let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }
]]
vim.g.closetag_shortcut = '>'

-- Git blame
vim.g.blamer_enabled = true
vim.g.blamer_prefix = '       '
vim.g.blamer_show_in_insert_modes = false
vim.g.blamer_show_in_visual_modes = false

