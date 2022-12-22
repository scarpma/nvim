-- -- Highlight, edit, and navigate code  -- Highlight, edit, and navigate codep -- Highlight, edit, and navigate codeackage manager : packer
-- download from: https://github.com/wbthomason/packer.nvim


-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fuzzy finder https://github.com/nvim-telescope/telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- sintax highlighting (treesitter) https://github.com/nvim-treesitter/nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use { -- Additional text objects via treesitter
  'nvim-treesitter/nvim-treesitter-textobjects',
  after = 'nvim-treesitter',
}


  use { -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  requires = {
    -- Automatically install LSPs to stdpath for neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    'j-hui/fidget.nvim',
  },
}

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  -- -- Theme inspired by Atom
  -- use 'navarasu/onedark.nvim'

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  -- Fancier statusline
  use 'nvim-lualine/lualine.nvim'


end)
