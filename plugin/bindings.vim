" Bind Ctrl-S to update.
nnoremap <silent> <C-S> :<C-U>update<CR>

" Close the buffer but not the window.
nnoremap <silent> <C-W> :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <C-I> :<C-U>nohlsearch<CR>

" Toggle highlighting.
nnoremap <silent> <leader>h :<C-U>set hlsearch!<CR>

" Copy to system clipboard.
nnoremap <leader>c "+y
nnoremap <leader>cc "+yy
nnoremap <silent> <leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <leader>p "+p
nnoremap <leader>P "+P
