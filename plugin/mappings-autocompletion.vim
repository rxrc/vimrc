" Close popup on tab and enter.
" Enable autoselect for consistent behavior.
let g:neocomplete#enable_auto_select = 1
inoremap <expr> <Tab> pumvisible() ? neocomplete#close_popup() : "\<Tab>"
inoremap <expr> <CR> neocomplete#close_popup() . "\<CR>"

" Smart close popup on backspace.
inoremap <expr> <BS> neocomplete#smart_close_popup() . "\<C-H>"

" Enable popup navigation with Ctrl-J and Ctrl-K.
inoremap <expr> <C-J> pumvisible() ? "\<C-N>" : "\<C-J>"
inoremap <expr> <C-K> pumvisible() ? "\<C-P>" : "\<C-K>"
