vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Tabs
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  -- They took our JOBS!
  use 'github/copilot.vim'

  -- tpope's doo-dads
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'


  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- Telescope extensions
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'debugloop/telescope-undo.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'

  -- Make stuff look cool
  use 'nvim-tree/nvim-web-devicons'
  use 'petertriho/nvim-scrollbar'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lua/popup.nvim'

  -- Color scheme
  use 'folke/tokyonight.nvim'
end)
