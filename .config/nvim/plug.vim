call plug#begin('$XDG_DATA_HOME/nvim/site/plugged')
" ====== a e s t h e t i c s
	Plug 'sainnhe/gruvbox-material'
	Plug 'junegunn/goyo.vim'
	Plug 'szw/vim-maximizer'
	Plug 'mbbill/undotree'
" ====== essentials
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'windwp/nvim-autopairs'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'puremourning/vimspector'
	Plug 'pbondoer/vim-42header'
call plug#end()

" gotta source
	source $XDG_CONFIG_HOME/nvim/plugins/aesthetics.vim
	source $XDG_CONFIG_HOME/nvim/plugins/telescope.vim
	source $XDG_CONFIG_HOME/nvim/plugins/lsp.vim
	source $XDG_CONFIG_HOME/nvim/plugins/treesitter.vim
	source $XDG_CONFIG_HOME/nvim/plugins/vimspector.vim

" miscellaneous
	nnoremap <F5> :w<CR> <bar> :source $XDG_CONFIG_HOME/nvim/init.vim<CR>
	nnoremap <F2> :Stdheader<CR>