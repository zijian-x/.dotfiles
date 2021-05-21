let mapleader=","

nnoremap <leader>rn :set rnu!<CR>
inoremap <leader>x <C-x><C-f>

" add terminal from below
nnoremap <leader>t :bel term<CR>

" exact word search syntax
nnoremap <leader>/ /\<\><left><left>

" resize splits
noremap <leader>b :vertical resize +10<CR>
nnoremap <leader>s :vertical resize -10<CR>
" nnoremap <leader>pv :Lex <bar> :vertical resize 30<CR>

" control buffers
nnoremap <leader>h :bprev<CR>
nnoremap <leader>l :bnext<CR>
