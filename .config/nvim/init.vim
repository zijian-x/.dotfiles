" set guicursor=n-v-c-a:hor1-blinkwait300-blinkon200-blinkoff150,i-ci-c:ver1-blinkwait300-blinkon200-blinkoff150
set guicursor=n-v-c-a:hor1,i-ci-c:ver1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

" line numbers
set number
set relativenumber

set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scroll=10
set scrolloff=0

" autocompletion within vim
set wildmode=longest,list,full

" vim file management
set noswapfile
set nobackup

" no error bell sound
set visualbell
set t_vb = 
set noerrorbells

" search 
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <silent> // :let @/ = ""<CR>

" move around selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" add numbered jk to jumplist
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

nnoremap Q <Nop>
nnoremap q <Nop>
nnoremap qq q
