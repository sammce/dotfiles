vim.cmd [[
    function! TrimWhitespace()
        let l:save = winsaveview()
        %s/\\\@<!\s\+$//e
        call winrestview(l:save)
    endfunction

    " Core
    let mapleader = ','
    nmap <silent> <leader>tw :call TrimWhitespace()<CR>
    nmap <silent> <leader><leader> :noh<CR>
    nmap <silent> <leader><Tab> :bnext<CR>
    nmap <silent> <leader><S-Tab> :bprevious<CR>
    nmap <silent> <leader>ba :%bd\|e#\|bd#<CR>

    " NNN
    nmap <silent> <leader>nn :NnnPicker<CR>


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

    " Trouble
    nmap <silent> <leader>tr :Trouble diagnostics focus<CR>
    nmap <silent> <leader>tc :Trouble diagnostics close<CR>

    " Typescript tools
    nmap <silent> <leader>tsr :TSToolsRenameFile<CR>

    " Telescope mappings
    nnoremap <silent> <leader>ff :Telescope find_files<CR>
    nnoremap <silent> <leader>fg :Telescope live_grep<CR>
    nnoremap <silent> <leader>fb :Telescope buffers<CR>
    nnoremap <silent> <leader>fh :Telescope help_tags<CR>
    nnoremap <silent> <leader>f/ :Telescope current_buffer_fuzzy_find<CR>
    nnoremap <silent> <leader>fo :Telescope oldfiles<CR>
    nnoremap <silent> <leader>fd :Telescope diagnostics<CR>
    nnoremap <silent> <leader>fl :Telescope find_files cwd=~/.config/nvim/ search_dirs=lua,init.lua<CR>
    nnoremap <silent> <leader>fc :Telescope find_files cwd=~/.config search_dirs=superfile<CR>
    nnoremap <silent> <leader>ft :TodoTelescope<CR>

    " Smoothie
    nnoremap <C-u> <cmd>call smoothie#do("\<C-u>zz") <CR>
    vnoremap <C-u> <cmd>call smoothie#do("\<C-u>zz") <CR>
    nnoremap <C-d> <cmd>call smoothie#do("\<C-d>zz") <CR>
    vnoremap <C-d> <cmd>call smoothie#do("\<C-d>zz") <CR>

    nnoremap { <cmd>call smoothie#do("\{zz") <CR>
    vnoremap { <cmd>call smoothie#do("\{zz") <CR>
    nnoremap } <cmd>call smoothie#do("\}zz") <CR>
    vnoremap } <cmd>call smoothie#do("\}zz") <CR>

    " Nvim lsp stuff
    nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> [d <cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>
    nnoremap <silent> ]d <cmd>lua vim.diagnostic.goto_next({ float = false })<CR>
    nnoremap <silent> <leader>of <cmd>lua vim.diagnostic.open_float()<CR>

    " Close buffer
    nmap <silent> <leader>w :bd<CR>
    nmap <silent> <leader>W :bd!<CR>

    " Codeium
    imap <silent><script><expr> <leader><Tab> codeium#Accept()
    imap <silent><script><expr> <leader>cl codeium#AcceptNextLine()
    imap <silent><script><expr> <leader>cw codeium#AcceptNextWord()


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
