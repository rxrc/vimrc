" Set matcher behavior.
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use ag or ack if available.
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
  let g:unite_source_rec_async_command =
    \ ['ag', '--follow', '--nocolor', '--nogroup',
    \  '--hidden', '-g', '']
endif

" Customize the buffer.
function! s:unite_settings()
  " Enable navigation with Ctrl-J and Ctrl-K in insert mode.
  imap <buffer> <C-J> <Plug>(unite_select_next_line)
  imap <buffer> <C-K> <Plug>(unite_select_previous_line)

  " Escape should exit buffer from normal mode.
  nmap <buffer> <Esc> q
endfunction

" Apply unite buffer settings when opening unite buffer.
augroup unite-buffer-settings
  autocmd!
  autocmd FileType unite call s:unite_settings()
augroup END
