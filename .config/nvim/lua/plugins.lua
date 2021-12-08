local packer = require('packer')
packer.reset()
packer.init {
	ensure_dependencies = true,
}

packer.startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- aesthetics
	use {
		'sainnhe/gruvbox-material',
		config = 'require("config.gruvbox")'
	}
	use {
		'Pocco81/TrueZen.nvim',
		config = 'require("config.tru-zen")'
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		config = 'require("config.treesitter")'
	}
	use 'rbgrouleff/bclose.vim'

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				run = 'make'
			}
		},
		config = 'require("config.telescope")',
	}

	-- lsp
	use {
		'neovim/nvim-lspconfig',
		config = 'require("config.lsp")'
	}
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
		},
		config = 'require("config.nvim-cmp")'
	}
	use 'mfussenegger/nvim-jdtls'

	-- debugger
	use {
		{
			'mfussenegger/nvim-dap',
			opt = true,
			keys = '<leader>di',
			config = 'require("config.nvim-dap")'
		},
		{
			'rcarriga/nvim-dap-ui',
			requires = 'nvim-dap',
		},
	}

	-- misc
	use 'mcchrish/nnn.vim'
	use {
		'vimwiki/vimwiki',
		opt = true,
		cmd = 'VimwikiUISelect'
	}
	use {
		'mbbill/undotree',
		config = 'vim.cmd("nnoremap <leader>u <cmd>UndotreeToggle<cr>")'
	}

end)