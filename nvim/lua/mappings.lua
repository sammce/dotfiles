vim.cmd [[
    function! TrimWhitespace()
        let l:save = winsaveview()
        %s/\\\@<!\s\+$//e
        call winrestview(l:save)
    endfunction

    " Core
    nmap <silent> <leader>tw :call TrimWhitespace()<CR>
    nmap <silent> <leader><leader> :noh<CR>
    nmap <silent> <leader><Tab> :BufferLineCycleNext<CR>
    nmap <silent> <leader><S-Tab> :BufferLineCyclePrev<CR>
    nmap <silent> <leader>ba :%bd\|e#\|bd#<CR>

    " Bufferline
    nmap <silent> <C-p> :BufferLinePick<CR>
    nmap <silent> <leader>bl :BufferLineMoveNext<CR>
    nmap <silent> <leader>bh :BufferLineMovePrev<CR>

    " NNN
    nmap <silent> <leader>nn :NnnPicker<CR>

    " Dap
    nmap <silent> <leader>dn :DapNew<CR>
    nmap <silent> <leader>dc :DapContinue<CR>
    nmap <silent> <leader>do :DapStepOut<CR>
    nmap <silent> <leader>di :DapStepInto<CR>
    nmap <silent> <leader>ds :DapStepOver<CR>
    nmap <silent> <leader>db :DapToggleBreakpoint<CR>
    nmap <silent> <leader>dt :DapTerminate<CR>

    " Neotree
    nmap <silent> <leader>et :Neotree<CR>
    nmap <silent> <leader>ec :Neotree close<CR>
    nmap <silent> <leader>ef :Neotree focus<CR>

    " Zen
    nmap <silent> <leader>z :ZenMode<CR>

    " Notify
    nmap <silent> <leader>cn :lua require('notify').dismiss()<CR>

    " Aerial
    nmap <silent> <leader>at :AerialToggle<CR>
    nmap <silent> <leader>an :AerialNavToggle<CR>
    nnoremap <silent><leader>ak :AerialPrev<CR>
    vnoremap <silent><leader>ak :AerialPrev<CR>
    nnoremap <silent><leader>aj :AerialNext<CR>
    vnoremap <silent><leader>aj :AerialNext<CR>

    " Fugitive (Git)
    nnoremap <silent> <leader>gs :0G<CR>
    nnoremap <silent> <leader>gd :Gdiffsplit<CR>

    " Trouble
    nmap <silent> <leader>tr :Trouble diagnostics focus<CR>
    nmap <silent> <leader>tc :Trouble diagnostics close<CR>

    " Typescript tools
    nmap <silent> <leader>tsr :TSToolsRenameFile<CR>

    " Telescope mappings
    nnoremap <silent> <leader>ff :Files<CR>
    nnoremap <silent> <leader>fg :Rg<CR>
    nnoremap <silent> <leader>fb :Buffers<CR>
    nnoremap <silent> <leader>fh :Helptags<CR>
    nnoremap <silent> <leader>/ :BLines<CR>
    nnoremap <silent> <leader>fo :History<CR>
    nnoremap <silent> <leader>fd :Telescope diagnostics<CR>
    nnoremap <silent> <leader>fl :Files ~/.config/nvim<CR>
    nnoremap <silent> <leader>fc :Files ~/.config<CR>
    nnoremap <silent> <leader>ft :TodoTelescope<CR>


    " Nvim lsp stuff
    nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>
    nnoremap <silent> ]d <cmd>lua vim.diagnostic.goto_next({ float = false })<CR>
    nnoremap <silent> <leader>of <cmd>lua vim.diagnostic.open_float()<CR>
    nnoremap <silent> <leader>lr :LspRestart<CR>

    " Close buffer
    nmap <silent> <leader>w :bd<CR>
    nmap <silent> <leader>W :bd!<CR>

    " Codeium
    imap <silent><script><expr> <leader><Tab> codeium#Accept()
    imap <silent><script><expr> <leader>cl codeium#AcceptNextLine()
    imap <silent><script><expr> <leader>cw codeium#AcceptNextWord()
    nmap <silent> <leader>cd :CodeiumDisable<CR>
    nmap <silent> <leader>ce :CodeiumEnable<CR>

    " Formatting
    nmap <C-f> gqq<CR>k
    nmap <M-f> :lua vim.lsp.buf.format()<CR>
    vmap <C-f> gq<CR>

    " Comments
    nmap <C-g> gcc<CR>
    vmap <C-g> gc
    
    " Icon picker
    nmap <silent> <leader>i :IconPickerNormal<CR>
    nmap <silent> <leader>y :IconPickerYank<CR>
    imap <silent> <C-i> :IconPickerInsert<CR>

    " Split navigation
    nmap <silent> <leader>sl <C-w>l
    nmap <silent> <leader>sj <C-w>j
    nmap <silent> <leader>sh <C-w>h
    nmap <silent> <leader>sk <C-w>k
    nmap <silent> <leader>ss <C-w>s
    nmap <silent> <leader>sv <C-w>v
    nmap <silent> <leader>nr <leader>ssq<leader>ef<CR>

    " VCoolor
    nmap <silent> <leader>vc :VCoolor<CR>

    " Luasnip
    imap <silent><expr> <leader>j luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
    inoremap <silent> <leader>J <cmd>lua require'luasnip'.jump(-1)<Cr>
]]
