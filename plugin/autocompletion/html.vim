" Enable html omni completion.
augroup omni-html
  autocmd!
  autocmd FileType html,html.handlebars,markdown,liquid
    \ setlocal omnifunc=htmlcomplete#CompleteTags
augroup END
