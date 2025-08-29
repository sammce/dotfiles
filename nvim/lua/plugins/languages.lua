local M = {
  -- Markdown
  { "jannis-baum/vivify.vim", ft="markdown" },
  { "dkarter/bullets.vim", ft = { "markdown", "text", "asciidoc", "journal" } },
  { "davidmh/mdx.nvim",    dependencies = { "nvim-treesitter/nvim-treesitter" }, ft = "mdx" },

  -- Rust
  {
    "mrcjkb/rustaceanvim",
    version = '^5', -- Recommended
  },

  -- Svelte
  { "leafOfTree/vim-svelte-plugin",                ft = "svelte" }, -- Svelte support

  -- HTML/JSX
  { "mattn/emmet-vim",                             ft = html_like }, -- Emmet for fast HTML coding
  { "JoosepAlviste/nvim-ts-context-commentstring", ft = html_like }, -- Context-aware comments
  { "KabbAmine/vCoolor.vim" },
  {
    "windwp/nvim-ts-autotag",
    ft = html_like,
    config = function() require("nvim-ts-autotag").setup() end,
  }, -- Auto-close HTML tags
  { 'alvan/vim-closetag',      ft = html_like },
}

return M
