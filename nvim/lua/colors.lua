-- Vim
vim.cmd("autocmd ColorScheme * highlight WinSeparator guifg=#ff6699")
-- Git Gutter
vim.cmd("autocmd ColorScheme * highlight GitGutterChange guifg=#ffcc00")
vim.cmd("autocmd ColorScheme * highlight GitGutterAdd ctermfg=2 guifg=#009900")
vim.cmd("autocmd ColorScheme * highlight GitGutterDelete ctermfg=1 guifg=#ff2222")

-- NvimTree
vim.cmd("autocmd ColorScheme * highlight NvimTreeNormal guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NvimTreeNormalNC guibg=#101030")
vim.cmd("autocmd ColorScheme * highlight NvimTreeWinSeparator guifg=#ff6699 guibg=NONE")
vim.cmd("autocmd ColorScheme * highlight NvimTreeGitDirty guifg=#ffcc00")

-- BufferLine
vim.cmd("autocmd ColorScheme * highlight BufferLineFill guibg=#101030")
