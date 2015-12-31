" Use vimtex for LaTeX autocompletion.
let g:neocomplete#sources#omni#input_patterns.tex =
  \ '\v\\\a*(ref|cite)\a*([^]]*\])?\{([^}]*,)*[^}]*'
