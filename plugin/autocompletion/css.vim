" Enable css omni completion.
augroup omni-css
  autocmd!
  autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
augroup END
