vim.o.termguicolors = true

vim.g['gruvbox_material_background'] = 'hard'
vim.g['gruvbox_material_sign_column_background'] = 'none'
vim.o.background = 'dark'
vim.cmd 'colorscheme gruvbox-material'

-- custom highlight groups
vim.cmd 'hi! link FloatermBorder None'
vim.cmd 'hi! link PMenu StatusLine'
vim.cmd 'hi! link NormalFloat StatusLine'
