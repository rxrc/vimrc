" Bindings for Unite.vim.

nnoremap <Leader>b :<C-U>Unite -no-split -buffer-name=buffer
  \ -start-insert buffer<CR>
nnoremap <Leader>e :<C-U>Unite -no-split -buffer-name=files
  \ -start-insert file<CR>
nnoremap <Leader>f :<C-U>Unite -no-split -buffer-name=files
  \ -start-insert file_rec/async:!<CR>
nnoremap <Leader>y :<C-U>Unite -no-split -buffer-name=yank
  \ history/yank<CR>
nnoremap <Leader>a :<C-U>Unite grep:.<CR>
