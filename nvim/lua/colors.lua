-- Vim
vim.cmd("autocmd ColorScheme * highlight WinSeparator guifg=#29a4bd")

-- Git Gutter
vim.cmd("autocmd ColorScheme * highlight GitGutterChange guifg=#ffcc00")
vim.cmd("autocmd ColorScheme * highlight GitGutterAdd ctermfg=2 guifg=#009900")
vim.cmd("autocmd ColorScheme * highlight GitGutterDelete ctermfg=1 guifg=#ff2222")

-- BufferLine
-- vim.cmd("autocmd ColorScheme * highlight BufferLineBackground guibg=#101030")
-- vim.cmd("autocmd ColorScheme * highlight BufferLineFill guibg=#101030")
-- vim.cmd("autocmd ColorScheme * highlight BufferLineCloseButton guibg=#101030")
-- vim.cmd("autocmd ColorScheme * highlight BufferLineSeparator guibg=#101030")

-- Syntax highlighting
vim.cmd("autocmd ColorScheme * highlight DiagnosticUnnecessary guifg=#5b6275")

-- Get rid of squiggly in rust macros
vim.cmd("autocmd FileType rust highlight @lsp.type.unresolvedReference gui=NONE cterm=NONE")

-- Folded text, with no background and a dark blueish foreground
vim.cmd("autocmd ColorScheme * highlight Folded guifg=#5b6275 guibg=NONE")

-- Finally, set color scheme
vim.cmd("colo tokyonight-night")
