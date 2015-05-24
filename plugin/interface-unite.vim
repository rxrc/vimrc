" Unite.vim configuration.

" Set matcher behavior.
call unite#filters#matcher_default#use(['matcher_fuzzy'])

if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt=''
elseif executable('ack')
  let g:unite_source_grep_command='ack'
  let g:unite_source_grep_default_opts='--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt=''
endif

" Use ag to filter the async Unite buffer.
if executable('ag')
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
endif

" Customize the buffer.
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " SuperTab compatibility.
  let b:SuperTabDisabled=1
  " Enable navigation with Ctrl-J and Ctrl-K in insert mode.
  imap <buffer> <C-J> <Plug>(unite_select_next_line)
  imap <buffer> <C-K> <Plug>(unite_select_previous_line)
endfunction
