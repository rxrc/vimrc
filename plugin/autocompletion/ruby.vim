" Enable Ruby omni completion.
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplete#sources#omni#input_patterns.ruby =
  \ '[^. *\t]\.\w*\|\h\w*::'
