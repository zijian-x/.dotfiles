" gruvbox-material config
	let g:gruvbox_material_background = 'hard'
	let g:gruvbox_material_enable_bold = 0
	let g:gruvbox_material_enable_italic = 0
	let g:gruvbox_material_disable_italic_comment = 0
	let g:gruvbox_material_sign_column_background = 'none'
	let g:gruvbox_material_statusline_style = 'default'
	let g:gruvbox_material_lightline_disable_bold = 1
	set termguicolors
	colorscheme gruvbox-material
	set background=dark

" goyo
	let g:goyo_width = 82
	let g:goyo_linenr = 1
	nnoremap <leader>z :Goyo<CR>

" maximizer
	let g:maximizer_set_default_mapping = 0
	nnoremap <silent> <C-f> :MaximizerToggle<CR>

" undo tree
	nnoremap <leader>u :UndotreeToggle<CR>