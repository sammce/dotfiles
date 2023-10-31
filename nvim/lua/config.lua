--- Plugins
-- Autocomplete
require('mason-config')
require('null-ls-config')
require('eslint-config')
require('prettier-config')
require('lspconfig-config')
require('nvim-cmp-config')
require('luasnip-config')

-- Misc
require('diagnostics-config')
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

-- Inline
vim.cmd [[
    let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
    let g:closetag_filetypes = 'html,js'
    let g:closetag_xhtml_filetype = 'xhtml,jsx,tsx'
    let g:closetag_emptyTags_caseSensitive = 1
    let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }
    let g:closetag_shortcut = '>'
]]
