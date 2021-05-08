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
nnoremap <leader>w :bw<CR>

" Go to tab by number
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast <CR>
