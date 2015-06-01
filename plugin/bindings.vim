" Double-tap leader to open Command-line mode.
nnoremap <leader><leader> :

" Use : to open command-line window.
nnoremap : q:

" Use Q to toggle folds.
nmap Q za

" Shortcuts to open splits.
nnoremap <silent> <leader>h :<C-U>vsplit left<CR>
nnoremap <silent> <leader>j :<C-U>split below<CR>
nnoremap <silent> <leader>k :<C-U>split above<CR>
nnoremap <silent> <leader>l :<C-U>vsplit right<CR>

" Double-tap backslash to write.
nnoremap <silent> \\ :<C-U>write<CR>

" Shortcut for update.
nnoremap <silent> <leader>s :<C-U>update<CR>

" Close the buffer but not the window.
nnoremap <silent> <leader>w :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <C-I> :<C-U>nohlsearch<CR>

" Toggle highlighting.
nnoremap <silent> <leader>i :<C-U>set hlsearch!<CR>

" Copy to system clipboard.
nmap <leader>c "+y
nmap <leader>cc "+yy
nmap <silent> <leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <leader>p "+p
nnoremap <leader>P "+P
