vim.opt.list = true
vim.opt.listchars:append('space:⋅')
vim.opt.listchars:append('tab:»·')
vim.opt.listchars:append('trail:·')

require('ibl').setup {
	-- show_current_context = true,
	-- show_current_context_start = true,
    exclude = { filetypes = { "dashboard" } },
    indent = { char = "▎" }
} 
