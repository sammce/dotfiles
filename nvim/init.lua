vim.cmd [[
	filetype plugin indent on
	set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
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
    set termguicolors
]]


lsp_servers = {
    'pyright',
    'tsserver',
    'svelte',
    'eslint',
    'clangd',
    'bashls',
    'gopls',
    'dockerls',
    'docker_compose_language_service',
    'r_language_server',
    'prismals',
    'sqlls'
}

require("plugins")
require("config")
require("colors")
require("mappings")

vim.cmd("autocmd FileType rust highlight @lsp.type.unresolvedReference gui=NONE cterm=NONE")


custom_tab_filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "svelte",
    "html",
    "css",
    "scss"
}

for i, file in pairs(custom_tab_filetypes) do
    vim.cmd("autocmd FileType " .. file .. " setlocal tabstop=2 shiftwidth=2")
end

vim.cmd("colo tokyonight-storm")
