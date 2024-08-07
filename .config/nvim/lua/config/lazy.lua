require'lazy'.setup({
	-- almighty picker --
	{
		'nvim-telescope/telescope.nvim',
		dependencies = 'nvim-lua/plenary.nvim',
		config = function () require('config.telescope') end
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make'
	},

	-- speedy edit --
	{
		"kylechui/nvim-surround",
		event = 'VeryLazy',
		config = true
	},

	-- lsp --
	{
		'neovim/nvim-lspconfig',
		config = function () require('config.lsp') end
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
		},
		config = function ()
			require('config.nvim-cmp')
			require('config.ls')
		end
	},
	{
		'mfussenegger/nvim-jdtls',
		lazy = true
	},

	-- misc --
	{
		'vimwiki/vimwiki',
		keys = { { '<leader>ws', '<cmd>VimwikiUISelect<cr>', desc = 'Vimwiki UI select' } },
		init = function () require('config.vimwiki') end
	},
	{
		'romainl/vim-devdocs',
		event = 'LspAttach',
	},
	{
		'lewis6991/gitsigns.nvim',
		config = true,
	},
	{
		'mbbill/undotree',
		config = function ()
			require('config.mapper').map('n', '<leader>u', '<cmd>UndotreeToggle<cr>')
		end
	},
	{
		'jbyuki/nabla.nvim',
		dependencies = 'nvim-treesitter/nvim-treesitter',
		lazy = true,
		ft = { 'vimwiki', 'md', 'tex' }
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = true,
		cmd = 'ColorizerAttachToBuffer'
	},
	{
		'nvim-treesitter/nvim-treesitter-context',
		dependencies = 'nvim-treesitter/nvim-treesitter',
		config = function () require('config.ts-context') end,
		event = 'LspAttach',
	},
	{
		'wakatime/vim-wakatime',
		lazy = false,
	},

	-- colortheme --
	{
		'rose-pine/neovim',
		config = function () require('config.colors') end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function () require('config.treesitter') end,
		lazy = true
	},
}, {
	ui = {
		icons = {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
