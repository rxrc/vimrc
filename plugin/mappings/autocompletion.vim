" Start manual completion with Ctrl-Space.
inoremap <expr> <C-Space> neocomplete#start_manual_complete()

" Tab completion.
imap <expr> <Tab> pumvisible() ? "\<C-N>" : "<Tab>"

" Snippet completion with Ctrl-Tab.
imap <expr> <C-Tab> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-N>" : "<C-Tab>"

" Snippet tab navigation.
smap <expr> <C-Tab> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-Tab>"

" Close popup on enter.
inoremap <expr> <CR> neocomplete#close_popup() . "\<CR>"

" Smart close popup on Ctrl-W.
imap <expr> <C-W> pumvisible() ?
  \ neocomplete#smart_close_popup() . "\<C-H>" : "<C-W>"

" Complete common sting with Ctrl-Space.
inoremap <expr> <C-L> neocomplete#complete_common_string()

" Popup navigation with Ctrl-J and Ctrl-K.
inoremap <expr> <C-J> pumvisible() ? "\<C-N>" : "\<C-J>"
inoremap <expr> <C-K> pumvisible() ? "\<C-P>" : "\<C-K>"
