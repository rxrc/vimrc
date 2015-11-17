" Use LaTeX-Box for LaTeX autocompletion.
let g:neocomplete#sources#omni#input_patterns.tex =
  \ '\v\\\a*(ref|cref|cite)\a*([^]]*\])?\{([^}]*,)*[^}]*'
