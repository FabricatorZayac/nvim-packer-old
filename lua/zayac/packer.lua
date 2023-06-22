vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function (use)
  use "wbthomason/packer.nvim"

  -- telescope
  use {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.1',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use "nvim-telescope/telescope-project.nvim"

  -- colorscheme
  use "ellisonleao/gruvbox.nvim"

  -- modeline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/playground"
  use "nvim-treesitter/nvim-treesitter-context"

  use "mbbill/undotree"

  use "cohama/lexima.vim"

  -- lsp
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional
      -- Autocompletion
      {"hrsh7th/nvim-cmp"},         -- Required
      {"hrsh7th/cmp-nvim-lsp"},     -- Required
      {"hrsh7th/cmp-buffer"},       -- Optional
      {"hrsh7th/cmp-path"},         -- Optional
      {"saadparwaiz1/cmp_luasnip"}, -- Optional
      {"hrsh7th/cmp-nvim-lua"},     -- Optional
      -- Snippets
      {"L3MON4D3/LuaSnip"},             -- Required
      {"rafamadriz/friendly-snippets"}, -- Optional
    }
  }

  use {
    "folke/trouble.nvim",
    config = function ()
      require("trouble").setup {
        -- icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    "aserowy/tmux.nvim",
    config = function () return require("tmux").setup() end
  }

  use {
    "jbyuki/instant.nvim",
    config = function () vim.g.instant_username = "FabricatorZayac" end
  }

  -- bullshit language stuff
  use "nvim-orgmode/orgmode"
  use "vmchale/ats-vim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- I don't even remember what this was for
  use "nvim-tree/nvim-web-devicons"
  use "norcalli/nvim-colorizer.lua"

  -- mandatory tpope stuff
  use "tpope/vim-commentary"
  use "tpope/vim-surround"
  use "tpope/vim-repeat"
  use "tpope/vim-fugitive"
  use "tpope/vim-obsession"
end)
