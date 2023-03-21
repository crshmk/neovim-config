-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 
    "catppuccin/nvim", 
    as = "catppuccin", 
    config = function() 
      vim.cmd('colorscheme catppuccin')
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('tpope/vim-vinegar')
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
end)

