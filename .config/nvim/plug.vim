call plug#begin('$XDG_DATA_HOME/nvim/site/plugged')
" ====== a e s t h e t i c s
	Plug 'sainnhe/gruvbox-material'
	Plug 'folke/zen-mode.nvim'
	Plug 'szw/vim-maximizer'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'pbondoer/vim-42header'
" ====== essentials
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
	Plug 'puremourning/vimspector'
	Plug 'mbbill/undotree'
call plug#end()

" gotta source
	source $XDG_CONFIG_HOME/nvim/plugins/aesthetics.vim
	source $XDG_CONFIG_HOME/nvim/plugins/telescope.vim
	source $XDG_CONFIG_HOME/nvim/plugins/lsp.vim
	source $XDG_CONFIG_HOME/nvim/plugins/vimspector.vim

" miscellaneous
	nnoremap <F5> <CMD>w \| source $XDG_CONFIG_HOME/nvim/init.vim<CR>
	nnoremap <F2> <CMD>Stdheader<CR>
	nnoremap <leader>u <CMD>UndotreeToggle<CR>
