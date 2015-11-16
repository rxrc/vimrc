" Start manual completion with Ctrl-Space.
inoremap <expr> <C-Space> neocomplete#start_manual_complete()

" Tab completion.
imap <expr> <Tab> pumvisible() ? "<C-N>" : "<Tab>"

" Snippet completion and navigation with Ctrl-L.
imap <expr> <C-L> neosnippet#expandable_or_jumpable() ?
  \ "<Plug>(neosnippet_expand_or_jump)" : "<C-L>"

" Close popup on enter.
inoremap <expr> <CR> neocomplete#close_popup() . "<CR>"

" Smart close popup on Ctrl-W.
imap <expr> <C-W> pumvisible() ?
  \ neocomplete#smart_close_popup() . "<C-H>" : "<C-W>"

" Complete common sting with Ctrl-H.
imap <expr> <C-H> pumvisible() ?
  \ neocomplete#complete_common_string() : "<C-H>"

" Popup navigation with Ctrl-J and Ctrl-K.
inoremap <expr> <C-J> pumvisible() ? "<C-N>" : "<C-J>"
inoremap <expr> <C-K> pumvisible() ? "<C-P>" : "<C-K>"
