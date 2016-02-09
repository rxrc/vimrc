augroup syntax-javascript
  autocmd!
  autocmd BufWritePost *.js,*.jsx silent !standard-format -w %
  autocmd BufReadPost *.js,*.jsx silent SyntasticCheck
augroup END
