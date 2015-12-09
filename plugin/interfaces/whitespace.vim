" Delete trailing whitespace.
augroup whitespace-strip
  autocmd!
  autocmd BufWritePre * StripWhitespace
augroup END
