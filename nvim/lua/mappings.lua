-- Custom Mappings (vim) (lua custom mappings are within individual lua config files)

vim.cmd [[
    function! TrimWhitespace()
        let l:save = winsaveview()
        %s/\\\@<!\s\+$//e
        call winrestview(l:save)
    endfunction

    " Neovim :Terminal
    tmap <Esc> <C-\><C-n>
    tmap <C-w> <Esc><C-w>
    
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert

    " Core
    let mapleader = ','
    nmap <leader>tw :call TrimWhitespace()<CR>
    nmap <silent> <leader><leader> :noh<CR>
    nmap <leader><Tab> :bnext<CR>
    nmap <leader><S-Tab> :bprevious<CR>
    nmap <leader>nr :set relativenumber!<CR>

    " Zen Mode
    nmap <leader>zn :TZNarrow<CR>
    vmap <leader>zn :'<,'>TZNarrow<CR>
    nmap <leader>zf :TZFocus<CR>
    nmap <leader>zm :TZMinimalist<CR>
    nmap <leader>za :TZAtaraxis<CR>
    nmap <leader>zl :Twilight<CR>

    " Easy align
    nmap ga <Plug>(EasyAlign)
    xmap ga <Plug>(EasyAlign)

    " Shell/terminal commands
    nmap <leader>sn <C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>

    " Nvim Tree
    nmap <leader>et :NvimTreeToggle<CR>
    nmap <leader>ec :NvimTreeClose<CR>
    nmap <leader>eo :NvimTreeOpen<CR>
    nmap <leader>ef :NvimTreeFocus<CR>

    " Tagbar
    nmap <leader>tt :TagbarToggle<CR>
    nmap <leader>to :TagbarOpen<CR>
    nmap <leader>tc :TagbarClose<CR>

    " Telescope mappings
    nnoremap <leader>ff :Telescope find_files<CR>
    nnoremap <leader>fg :Telescope live_grep<CR>
    nnoremap <leader>fb :Telescope buffers<CR>
    nnoremap <leader>fh :Telescope help_tags<CR>
    nnoremap <leader>fc :Telescope colorscheme<CR>
    nnoremap <leader>f/ :Telescope current_buffer_fuzzy_find<CR>
    nnoremap <leader>fo :Telescope oldfiles<CR>
    nnoremap <leader>fd :Telescope find_files cwd=~/.config/nvim/ search_dirs=lua,init.lua<CR>

    nnoremap <C-u> <cmd>call smoothie#do("\<C-u>zz") <CR>
    vnoremap <C-u> <cmd>call smoothie#do("\<C-u>zz") <CR>
    nnoremap <C-d> <cmd>call smoothie#do("\<C-d>zz") <CR>
    vnoremap <C-d> <cmd>call smoothie#do("\<C-d>zz") <CR>

    nnoremap { <cmd>call smoothie#do("\{zz") <CR>
    vnoremap { <cmd>call smoothie#do("\{zz") <CR>
    nnoremap } <cmd>call smoothie#do("\}zz") <CR>
    vnoremap } <cmd>call smoothie#do("\}zz") <CR>
    " Code actions
    " nnoremap <silent> <leader>ca <cmd>:lua vim.lsp.buf.code_action()<CR>
    nnoremap <silent> <leader>ca <cmd>:CodeActionMenu<CR>

    " vcoolor
    let g:vcoolor_map = "<leader>cp"
    nmap <leader>ct :HexokinaseToggle<CR>
    xmap <leader>ct :HexokinaseToggle<CR>

    " Close buffer
    nmap <leader>w :bd<CR>
    nmap <leader>W :bd!<CR>

    " Copilot
    imap <silent><script><expr> <leader><Tab> copilot#Accept("")
    nmap <leader>cd :Copilot disable<CR>
    nmap <leader>ce :Copilot enable<CR>
    let g:copilot_no_tab_map = v:true

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

    " Luasnip
    imap <silent><expr> <leader>j luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
    inoremap <silent> <leader>J <cmd>lua require'luasnip'.jump(-1)<Cr>
]]

-- This not being here messes up the syntax highlighting. Thanks for stopping by!
