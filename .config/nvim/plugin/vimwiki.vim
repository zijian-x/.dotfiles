let g:vimwiki_list = [
	    \ {
		\ 'path': '~/Dropbox/notes/misc',
		\ 'syntax': 'markdown', 'ext': '.md'
		\ },
		\ {
		    \ 'path': '~/Dropbox/notes/compsci',
		    \ 'syntax': 'markdown', 'ext': '.md'
		    \ },
		    \ {
			\ 'path': '~/Dropbox/notes/fh',
			\ 'syntax': 'markdown', 'ext': '.md'
			\ },
			\ ]

nnoremap <leader>ws <cmd>VimwikiUISelect<cr>
