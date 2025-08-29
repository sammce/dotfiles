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
  "javascriptreact",
  "typescriptreact",
  "svelte",
  "html",
  "css",
  "scss",
  "lua",
  "zsh",
  "bash",
  "json",
  "mdx"
}

vim.filetype.add({
  pattern = {
    ["compose*.ya?ml"] = "yaml.docker-compose",
    ["docker-compose*.ya?ml"] = "yaml.docker-compose",
    ["Dockerfile*"] = "dockerfile",
  }
})

for _, file in pairs(custom_tab_filetypes) do
  if file ~= "htmldjango" then
    vim.cmd("autocmd FileType " .. file .. " setlocal tabstop=2 shiftwidth=2")
  end
end

vim.opt.termguicolors = true

vim.g.user_emmet_expandabbr_key = '<leader>em'

-- Autocommand for enabling inlay hints in rust
vim.cmd [[ autocmd FileType rust lua vim.lsp.inlay_hint.enable() ]]

vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.cmd [[ colorscheme gruvbox-material ]]
