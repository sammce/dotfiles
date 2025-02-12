vim.cmd [[
    function! TrimWhitespace()
        let l:save = winsaveview()
        %s/\\\@<!\s\+$//e
        call winrestview(l:save)
    endfunction

    " Core
    let mapleader = ','
    nmap <leader>tw :call TrimWhitespace()<CR>
    nmap <silent> <leader><leader> :noh<CR>
    nmap <leader><Tab> :bnext<CR>
    nmap <leader><S-Tab> :bprevious<CR>
    nmap <leader>ba :%bd\|e#\|bd#<CR>
    nmap <leader>nr :set number!<CR>

    " Django
    nmap <leader>dj :set ft=htmldjango<CR>
    nmap <leader>ht :set ft=html<CR>

    nmap <leader>et :Neotree<CR>
    nmap <leader>ec :Neotree close<CR>
    nmap <leader>ef :Neotree focus<CR>

    nmap <leader>z :ZenMode<CR>

    " Notify
    nmap <silent> <leader>cn :lua require('notify').dismiss()<CR>

    " Aerial
    nmap <silent> <leader>at :AerialToggle<CR>

    " Trouble
    nmap <leader>tr :Trouble diagnostics focus<CR>
    nmap <leader>tc :Trouble diagnostics close<CR>

    " Telescope mappings
    nnoremap <leader>ff :Telescope find_files<CR>
    nnoremap <leader>fg :Telescope live_grep<CR>
    nnoremap <leader>fb :Telescope buffers<CR>
    nnoremap <leader>fh :Telescope help_tags<CR>
    nnoremap <leader>f/ :Telescope current_buffer_fuzzy_find<CR>
    nnoremap <leader>fo :Telescope oldfiles<CR>
    nnoremap <leader>fd :Telescope diagnostics<CR>
    nnoremap <leader>fc :Telescope find_files cwd=~/.config/nvim/ search_dirs=lua,init.lua<CR>
    nnoremap <leader>ft :TodoTelescope<CR>

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
    nmap <leader>w :bd<CR>
    nmap <leader>W :bd!<CR>

    " Copilot
    imap <silent><script><expr> <leader><Tab> copilot#Accept("")
    nmap <leader>cd :Copilot disable<CR>
    nmap <leader>ce :Copilot enable<CR>
    let g:copilot_no_tab_map = v:true

    " Icon picker
    nmap <leader>i :IconPickerNormal<CR>
    nmap <leader>y :IconPickerYank<CR>
    imap <C-i> :IconPickerInsert<CR>

    " Leetbuddy
    nmap <leader>lq :LBQuestions<CR>
    nmap <leader>ll :LBQuestion<CR>
    nmap <leader>lr :LBReset<CR>
    nmap <leader>lt :LBTest<CR>
    nmap <leader>ls :LBSubmit<CR>

    " Split navigation
    nmap <leader>sl <C-w>l
    nmap <leader>sj <C-w>j
    nmap <leader>sh <C-w>h
    nmap <leader>sk <C-w>k
    nmap <leader>ss <C-w>s
    nmap <leader>sv <C-w>v
    nmap <leader>sr <leader>ssq<leader>ef<CR>

    " Luasnip
    imap <silent><expr> <leader>j luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
    inoremap <silent> <leader>J <cmd>lua require'luasnip'.jump(-1)<Cr>
]]

-- This not being here messes up the syntax highlighting. Thanks for stopping by!
