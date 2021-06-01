" lsp

set shortmess+=c
set completeopt=menuone,noinsert
let g:completion_enable_auto_paren = 1
let g:completion_trigger_keyword_length = 2
let g:completion_matching_strategy_list = ['exact']
" let g:completion_timer_cycle = 200 "default value is 80
let g:completion_confirm_key = "\<C-y>"
imap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"

" C language server
lua require('lspconfig').clangd.setup{ on_attach=require'completion'.on_attach }
nnoremap <silent> <leader>s :ClangdSwitchSourceHeader<CR>

" keybinds
" nnoremap <silent> gd <CMD>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gp <CMD>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gr <CMD>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gd <CMD>Telescope lsp_definitions<CR>
nnoremap <silent> gp <CMD>Telescope lsp_implementations<CR>
nnoremap <silent> gr <CMD>Telescope lsp_references<CR>
nnoremap <silent> gD <CMD>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gh <CMD>lua vim.lsp.buf.hover()<CR>
inoremap <silent> <leader><SPACE> <CMD>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>re <CMD>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>gfa <CMD>Telescope lsp_workspace_symbols<CR>
nnoremap <silent> <leader>gfc <CMD> Telescope lsp_document_symbols<CR>
nnoremap <silent> <leader>gea <CMD>Telescope lsp_workspace_diagnostics<CR>
nnoremap <silent> <leader>gec <CMD>Telescope lsp_document_diagnostics<CR>
nnoremap <silent> <leader>gen <CMD>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <leader>gep <CMD>lua vim.lsp.diagnostic.goto_next()<CR>
