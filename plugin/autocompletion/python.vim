" Use jedi-vim for Python autocompletion.
augroup omni-python
  autocmd!
  autocmd FileType python setlocal omnifunc=jedi#completions
augroup END
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python =
  \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" Set default jedi-vim mappings.
let g:jedi#rename_command = '<Leader>R'
let g:jedi#usages_command = '<Leader>N'
let g:jedi#goto_command = '<Leader>D'
let g:jedi#goto_assignments_command = '<Leader>G'

" Synchronize jedi-vim with pyenv.
if jedi#init_python()
  function! s:jedi_auto_force_py_version() abort
    let major_version = pyenv#python#get_internal_major_version()
    call jedi#force_py_version(major_version)
  endfunction
  augroup vim-pyenv-custom-augroup
    autocmd! *
    autocmd User vim-pyenv-activate-post call s:jedi_auto_force_py_version()
    autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
  augroup END
endif
