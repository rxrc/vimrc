" Double-tap leader to open Command-line mode.
nnoremap <leader><leader> :

" Use : to open command-line window.
nnoremap : q:

" Use Q to toggle folds.
nmap Q za

" Shortcuts to open splits.
nnoremap <silent> <leader>s :<C-U>split<CR>
nnoremap <silent> <leader>v :<C-U>vsplit<CR>

" Double-tap backslash to write.
nnoremap <silent> \\ :<C-U>write<CR>

" Shortcut for update.
nnoremap <silent> <leader>w :<C-U>update<CR>

" Close the buffer but not the window.
nnoremap <silent> <C-W> :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <C-I> :<C-U>nohlsearch<CR>

" Toggle highlighting.
nnoremap <silent> <leader>h :<C-U>set hlsearch!<CR>

" Copy to system clipboard.
map <leader>c "+y
map <leader>cc "+yy
map <silent> <leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <leader>p "+p
nnoremap <leader>P "+P
