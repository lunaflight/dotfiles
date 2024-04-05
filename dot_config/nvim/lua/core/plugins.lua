local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  { 'ellisonleao/gruvbox.nvim', priority = 1000 },
  'rebelot/kanagawa.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  'navarasu/onedark.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'bluz71/vim-nightfly-colors',
  'vim-test/vim-test',
  'lewis6991/gitsigns.nvim',
  'preservim/vimux',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-fugitive',
  'tpope/vim-commentary',

  -- debugging
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'simrat39/rust-tools.nvim',

  -- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.5',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Probably useless?
  "ms-jpq/coq_nvim",
  "ms-jpq/coq.artifacts",

  -- Markdown
  "iamcco/markdown-preview.nvim",
  -- Rainbow indentations on the left
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}

local opts = {}

require("lazy").setup(plugins, opts)
