" Disable Auto Pairs for clojure.
augroup auto-pairs-clojure
  autocmd!
  autocmd Filetype clojure let b:AutoPairs = {}
augroup END
