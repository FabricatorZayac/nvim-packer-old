vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {'nvim-lua/plenary.nvim'}
  }

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use "nvim-telescope/telescope-project.nvim"

  use "ellisonleao/gruvbox.nvim"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'mbbill/undotree'

  -- use {
  --   'windwp/nvim-autopairs',
  --   config = function() require("nvim-autopairs").setup {} end
  -- }
  use "cohama/lexima.vim"

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional
      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use {
    "aserowy/tmux.nvim",
    config = function () return require("tmux").setup() end
  }

  use {
    "jbyuki/instant.nvim",
    config = function () vim.g.instant_username = "FabricatorZayac" end
  }

  use "jose-elias-alvarez/null-ls.nvim"

  -- use 'kevinhwang91/rnvimr'

  -- use 'vimpostor/vim-tpipeline'

  use 'nvim-tree/nvim-web-devicons'

  use 'kdheepak/lazygit.nvim'

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-fugitive'

  use 'vmchale/ats-vim'
end)
