" Enable html omni completion.
augroup omni-html
  autocmd!
  autocmd FileType html,markdown,liquid
    \ setlocal omnifunc=htmlcomplete#CompleteTags
augroup END
