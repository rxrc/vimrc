" Double-tap leader to open command-line mode.
nnoremap <leader><leader> :
vnoremap <leader><leader> :

" Use : to open command-line window.
nnoremap : q:
vnoremap : q:

" Use Q to toggle folds.
nmap Q za


" Double-tap backslash to write.
nnoremap <silent> \\ :<C-U>write<CR>

" Shortcut for update.
nnoremap <silent> <leader>s :<C-U>update<CR>

" Close the buffer but not the window.
nnoremap <silent> <leader>w :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <leader>i :<C-U>nohlsearch<CR>

" Copy to system clipboard.
nnoremap <leader>c "+y
nnoremap <leader>cc "+yy
nnoremap <silent> <leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Split frame.
nnoremap <leader>H :topleft vsplit<CR>
nnoremap <leader>L :botright vsplit<CR>
nnoremap <leader>K :topleft split<CR>
nnoremap <leader>J :botright split<CR>

" Split window.
nnoremap <leader>h :leftabove vsplit<CR>
nnoremap <leader>l :rightbelow vsplit<CR>
nnoremap <leader>k :leftabove split<CR>
nnoremap <leader>j :rightbelow split<CR>
