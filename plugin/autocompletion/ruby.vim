" Enable Ruby omni completion.
augroup omni-ruby
  autocmd!
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
augroup END
let g:neocomplete#sources#omni#input_patterns.ruby =
  \ '[^. *\t]\.\w*\|\h\w*::'
