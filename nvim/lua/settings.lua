-- Closetags
vim.g.closetag_filetypes = 'html,javascriptreact,typescriptreact,svelte'
vim.g.closetag_emptyTags_caseSensitive = true
vim.cmd [[
    let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
]]
vim.g.closetag_shortcut = '>'

-- Set cursor in terminal emulators
vim.cmd [[
  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver100-iCursor
  set guicursor+=n-v-c:blinkon0
  set guicursor+=i:blinkwait10
]]

-- vim.g.copilot_enabled = 1
vim.g.codeium_disable_bindings = 1

-- Git blame
vim.g.blamer_enabled = true
vim.g.blamer_prefix = '       '
vim.g.blamer_show_in_insert_modes = false
vim.g.blamer_show_in_visual_modes = false

-- NNN.vim
vim.cmd [[
  let g:nnn#command = 'unset NNN_TMPFILE; nnn -do'
]]

-- Svelte plugin (fix indenting)
vim.g.vim_svelte_plugin_has_init_indent = 1
vim.g.vim_svelte_plugin_use_typescript = 1

vim.cmd [[
  filetype plugin indent on
  set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
  set incsearch ignorecase smartcase hlsearch
  set wildmode=longest,list,full wildmenu
  set ruler laststatus=2 showcmd showmode
  set fillchars=vert:│,fold:┈,diff:┈
  set wrap breakindent
  set encoding=utf-8
  set textwidth=0
  set hidden
  set relativenumber number
  set title
]]


local custom_tab_filetypes = {
  "javascript",
  "typescript",
  "typescriptreact",
  "svelte",
  "html",
  "htmldjango",
  "css",
  "scss",
  "lua",
  "zsh",
  "bash",
  "json",
  "mdx"
}

for _, file in pairs(custom_tab_filetypes) do
  vim.cmd("autocmd FileType " .. file .. " setlocal tabstop=2 shiftwidth=2")
end

vim.cmd [[ autocmd BufReadPost,FileReadPost * normal zR ]]

vim.opt.termguicolors = true

vim.g.user_emmet_expandabbr_key = '<leader>em'

-- Autocommand for enabling inlay hints in rust
vim.cmd [[ autocmd FileType rust lua vim.lsp.inlay_hint.enable() ]]
