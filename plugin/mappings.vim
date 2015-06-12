" Double-tap leader to open command-line mode.
nnoremap <Leader><Leader> :
vnoremap <Leader><Leader> :

" Use : to open command-line window.
nnoremap : q:
vnoremap : q:

" Use Q to toggle folds.
nmap Q za


" Double-tap backslash to write.
nnoremap <silent> \\ :<C-U>write<CR>

" Shortcut for update.
nnoremap <silent> <Leader>s :<C-U>update<CR>

" Close the buffer but not the window.
nnoremap <silent> <Leader>w :<C-U>BD<CR>

" Clear highlighting until next search.
nnoremap <silent> <Leader>i :<C-U>nohlsearch<CR>

" Copy to system clipboard.
nnoremap <Leader>c "+y
nnoremap <Leader>cc "+yy
nnoremap <silent> <Leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" Split frame.
nnoremap <Leader>H :topleft vsplit<CR>
nnoremap <Leader>L :botright vsplit<CR>
nnoremap <Leader>K :topleft split<CR>
nnoremap <Leader>J :botright split<CR>

" Split window.
nnoremap <Leader>h :leftabove vsplit<CR>
nnoremap <Leader>l :rightbelow vsplit<CR>
nnoremap <Leader>k :leftabove split<CR>
nnoremap <Leader>j :rightbelow split<CR>
