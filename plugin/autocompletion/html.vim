" Enable html omni completion.
augroup omni-html
  autocmd!
  autocmd FileType html,html.handlebars,liquid,markdown
    \ setlocal omnifunc=htmlcomplete#CompleteTags
augroup END
