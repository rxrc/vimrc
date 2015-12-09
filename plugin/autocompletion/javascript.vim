" Use Node omni completion.
augroup omni-javascript
  autocmd!
  autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
augroup END
