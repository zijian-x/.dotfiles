local config = function()
	require('nvim-treesitter.configs').setup {
		ensure_installed = {
			'markdown',
			'vimdoc',
			'c',
			'cpp',
			'lua',
			'bash',
			'rust',
			'vim',
			'query',
			-- 'latex', -- binary package in PATH needed
			'toml',
			'comment'
		},
		highlight = {
			enable = false,
			additional_vim_regex_highlighting = false
		},
		autopairs = { enable = false },
		indent = { enable = false },
	}

	vim.cmd 'silent TSUpdate'
end

return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = true,
		config = config,
	},
}
