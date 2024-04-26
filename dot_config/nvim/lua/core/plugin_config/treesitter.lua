require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  -- https://github.com/nvim-treesitter/nvim-treesitter
  ensure_installed = {
    "bash",
    "c",
    "comment",
    "cpp",
    "css",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "html",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "latex",
    "lua",
    "make",
    "markdown",
    "ocaml",
    "org",
    "python",
    "toml",
    "vim",
    "yaml",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldenable = false
