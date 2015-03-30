" Enable spell checking.
set spell spelllang=en_us

" Use local spellfile if available.
let b:spellfile = expand('%:p:h').'/.spellfile.utf-8.add'
if filereadable(b:spellfile)
  let &l:spellfile = b:spellfile
  setlocal spell
  setlocal spelllang=en_us
else
  setlocal spellfile=
endif
