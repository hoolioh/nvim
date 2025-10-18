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

require("lazy").setup({
    { 'navarasu/onedark.nvim' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { 'alexghergh/nvim-tmux-navigation' },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Mason
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- Autocompletion framework
    {'hrsh7th/nvim-cmp'},
    -- Completion source
    {'hrsh7th/cmp-nvim-lsp'},
    -- Sources
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    -- Snippets
    {'L3MON4D3/LuaSnip'},
    -- Debugger
    { 'puremourning/vimspector' },
    { 'cpea2506/relative-toggle.nvim' },
    { 'tpope/vim-commentary' },
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons'},
    },
})
