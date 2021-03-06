" Start manual completion with Ctrl-Space.
inoremap <expr> <C-Space> neocomplete#start_manual_complete()
imap <NUL> <C-Space>

" Enable tab completion.
imap <expr> <Tab> pumvisible() ? "<C-N>" : "<Tab>"

" Enable snippet completion and navigation with Ctrl-L.
imap <expr> <C-L> neosnippet#expandable_or_jumpable() ?
  \ "<Plug>(neosnippet_expand_or_jump)" : "<Right>"

" Close popup on enter.
inoremap <expr> <CR> neocomplete#close_popup() . "<CR>"

" Smart close popup on Ctrl-W.
imap <expr> <C-W> pumvisible() ?
  \ neocomplete#smart_close_popup() . "<C-H>" : "<C-W>"

" Navigate popup with Ctrl-J and Ctrl-K.
inoremap <expr> <C-J> pumvisible() ? "<C-N>" : "<C-J>"
inoremap <expr> <C-K> pumvisible() ? "<C-P>" : "<C-K>"
