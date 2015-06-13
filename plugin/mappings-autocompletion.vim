" Tab completion.
inoremap <expr> <Tab> pumvisible() ? "\<C-N>" : "\<Tab>"

" Close popup on enter.
inoremap <expr> <CR> neocomplete#close_popup() . "\<CR>"

" Smart close popup on backspace.
inoremap <expr> <BS> neocomplete#smart_close_popup() . "\<C-H>"

" Popup navigation with Ctrl-J and Ctrl-K.
inoremap <expr> <C-J> pumvisible() ? "\<C-N>" : "\<C-J>"
inoremap <expr> <C-K> pumvisible() ? "\<C-P>" : "\<C-K>"

" Fast popup navigation with Ctrl-L and Ctrl-H.
inoremap <expr> <C-L> pumvisible() ? "\<C-N>\<C-N>\<C-N>" : "\<C-L>"
inoremap <expr> <C-H> pumvisible() ? "\<C-P>\<C-P>\<C-P>" : "\<C-H>"
