return {
	'saghen/blink.cmp',
	dependencies = 'rafamadriz/friendly-snippets',
	event = 'InsertEnter',
	version = '*',
	opts = {
		keymap = {
			-- case sensitive!!
			['<Tab>'] = { 'select_next', 'fallback' },
			['<S-Tab>'] = { 'select_prev', 'fallback' },
			['<C-n>'] = { 'select_next', 'fallback' },
			['<C-p>'] = { 'select_prev', 'fallback' },
			['<C-y>'] = { 'accept', 'fallback' },
			['<C-l>'] = { 'show', 'hide', 'fallback' },
			['<C-_>'] = { 'cancel', 'fallback' },
			['<C-Space>'] = { 'show_documentation', 'hide_documentation', 'fallback' },
			['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
			['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
		},
		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = true
				}
			},
			accept = { auto_brackets = { enabled = false } },
			menu = {
				draw = {
					columns = { { 'label', 'label_description', gap = 1 }, { 'kind' } }
				}
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
			}
		},
		sources = {
			default = { "snippets", "lsp", "buffer" },
			providers = {
				lsp = { score_offset = 2 },
				snippets = { score_offset = 1 },
				buffer = { score_offset = 0 },
			},
			per_filetype = { codecompanion = { "codecompanion" } },
		},
		cmdline = { enabled = false },
	},
}
