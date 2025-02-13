-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'tinted-theming/tinted-vim',
		config = function()
			vim.cmd('colorscheme base16-default-dark')
		end
	}
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-treesitter/playground'
	use 'theprimeagen/harpoon'
	use 'mbbill/undotree'
  use 'preservim/nerdtree'
	use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  -- use 'github/copilot.vim'
  use 'vim-crystal/vim-crystal'
  use 'w0ng/vim-hybrid'
  use 'MunifTanjim/nui.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  }
  use {
    'nvimtools/none-ls.nvim',
    requires = {
      'nvimtools/none-ls-extras.nvim',
      'nvim-lua/plenary.nvim'
    }
  }
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
end)
