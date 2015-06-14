" Use jedi-vim for Python autocompletion.
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python =
  \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" Synchronize jedi-vim with pyenv.
if jedi#init_python()
  function! s:jedi_auto_force_py_version() abort
    let major_version = pyenv#python#get_internal_major_version()
    call jedi#forec_py_version(major_version)
  endfunction
  augroup vim-pyenv-custom-augroup
    autocmd! *
    autocmd vim-pyenv-activate-post   * call s:jedi_auto_force_py_version()
    autocmd vim-pyenv-deactivate-post * call s:jedi_auto_force_py_version()
  augroup END
endif
