-- Vim
vim.cmd("autocmd ColorScheme * highlight WinSeparator guifg=#29a4bd")

vim.cmd("autocmd ColorScheme * highlight HighlightedYankRegion guibg=#1A6D7C guifg=#BEEBFE")

-- NeoTree
vim.cmd("autocmd ColorScheme * highlight NeoTreeNormal guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NeoTreeNormalNC guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NeoTreeRootName guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NeoTreeCursorLine guibg=#12454E")
vim.cmd("autocmd ColorScheme * highlight NeoTreeStatusLine guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NeoTreeEndOfBuffer guibg=NONE")

-- Telescope
vim.cmd("autocmd ColorScheme * highlight TelescopeNormal guibg=#000F13")
vim.cmd("autocmd ColorScheme * highlight TelescopeBorder guibg=#000F13")


-- WhichKey
vim.cmd("autocmd ColorScheme * highlight WhichKeyNormal guibg=#000F13")
vim.cmd("autocmd ColorScheme * highlight WhichKeyBorder guifg=#27a1b9 guibg=#000F13")
vim.cmd("autocmd ColorScheme * highlight WhichKeyTitle guifg=#27a1b9 guibg=#000F13")

-- Noice
vim.cmd("autocmd ColorScheme * highlight NoiceCmdlinePopup guibg=#01151C")

-- Git Gutter
vim.cmd("autocmd ColorScheme * highlight GitGutterChange guifg=#ffcc00")
vim.cmd("autocmd ColorScheme * highlight GitGutterAdd ctermfg=2 guifg=#009900")
vim.cmd("autocmd ColorScheme * highlight GitGutterDelete ctermfg=1 guifg=#ff2222")

-- Syntax highlighting
vim.cmd("autocmd ColorScheme * highlight DiagnosticUnnecessary guifg=#5b6275")

-- Get rid of squiggly in rust macros
vim.cmd("autocmd FileType rust highlight @lsp.type.unresolvedReference gui=NONE cterm=NONE")

-- Folded text, with no background and a dark blueish foreground
vim.cmd("autocmd ColorScheme * highlight Folded guifg=#5b6275 guibg=NONE")

-- Finally, set color scheme
vim.cmd("colo tokyonight-night")
