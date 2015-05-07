" Bind Ctrl-S to update.
nnoremap <silent> <C-S> :<C-U>update<CR>

" Buffer manipulation.
nnoremap <silent> <C-W> :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <C-I> :<C-U>nohlsearch<CR>

" Toggle highlighting.
nnoremap <silent> <leader>h :<C-U>set hlsearch!<CR>
