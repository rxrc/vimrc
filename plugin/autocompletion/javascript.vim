" Use JavaScript omni completion.
augroup omni-javascript
  autocmd!
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup END
