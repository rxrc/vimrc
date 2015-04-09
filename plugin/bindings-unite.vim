" Bindings for Unite.vim.

nnoremap <leader>b :<C-U>Unite -no-split -buffer-name=buffer
  \ -start-insert buffer<CR>
nnoremap <leader>e :<C-U>Unite -no-split -buffer-name=files
  \ -start-insert file<CR>
nnoremap <leader>f :<C-U>Unite -no-split -buffer-name=files
  \ -start-insert file_rec/async:!<CR>
nnoremap <leader>y :<C-U>Unite -no-split -buffer-name=yank
  \ history/yank<CR>
