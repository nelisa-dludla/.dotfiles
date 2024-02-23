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
  'nvim-treesitter/nvim-treesitter',
  'nvim-lualine/lualine.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  -- Autocomplete
  'hrsh7th/nvim-cmp',
  {
	  'L3MON4D3/LuaSnip',
	  dependencies = { 'saadparwaiz1/cmp_luasnip' }
  },
  'rafamadriz/friendly-snippets',
  'hrsh7th/cmp-nvim-lsp',
  'nvim-tree/nvim-web-devicons',
  'FelipeIzolan/lipoide.nvim',
  {
    'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
