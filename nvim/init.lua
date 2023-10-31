vim.cmd [[
	colorscheme tokyonight-storm
	filetype plugin indent on
	set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
	set incsearch ignorecase smartcase hlsearch
	set wildmode=longest,list,full wildmenu
	set ruler laststatus=2 showcmd showmode
	set fillchars+=vert:\ 
	set wrap breakindent
    set cpoptions+=$
	set encoding=utf-8
	set textwidth=0
	set hidden
	set number
	set title
]]

-- vim.g.copilot_enabled = false

lsp_servers = {
    'pyright',
    'tsserver',
    'rust_analyzer',
    'svelte',
    'eslint',
    'clangd',
    'bashls',
    'gopls',
    'r_language_server'
}

require("plugins")
require("config")
require("mappings")

custom_tab_filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "svelte",
    "html",
    "css"
}

for i, file in pairs(custom_tab_filetypes) do
    vim.cmd("autocmd FileType " .. file .. " setlocal tabstop=2 shiftwidth=2")
end

vim.cmd("colo tokyonight-storm")
