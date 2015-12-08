" Double-tap leader to open command-line mode.
nnoremap <Leader><Leader> :
vnoremap <Leader><Leader> :

" Use Ctrl-K and Ctrl-J to navigate command history.
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

" Use : to open command-line window.
nnoremap : q:
vnoremap : q:

" Shortcuts for record.
nnoremap <Leader>q q
vnoremap <Leader>q q

" Shortcuts for marks.
nnoremap q m
vnoremap q m
nnoremap qq mm
vnoremap qq mm

" Shortcut for new.
nnoremap <silent> <Leader>n :<C-U>enew<CR>

" Shortcuts for quit.
nnoremap <silent> Q :<C-U>quit<CR>
vnoremap <silent> Q :<C-U>quit<CR>

" Shortcuts for force quit.
nnoremap <silent> <leader>Q :<C-U>quit!<CR>
vnoremap <silent> <leader>Q :<C-U>quit!<CR>

" Shortcut to quit all.
nnoremap <silent> <C-Q> :<C-U>quitall<CR>

" Shortcuts for update and force write.
nnoremap <silent> <Leader>s :<C-U>update<CR>
nnoremap <silent> <Leader>S :<C-U>write!<CR>

" Shortcut for redo.
nnoremap <silent> <Leader>r <C-R>

" Close the buffer but not the window.
nnoremap <silent> <Leader>w :<C-U>BD<CR>
nnoremap <silent> <Leader>W :<C-U>BD!<CR>

" Clear highlighting until next search.
nnoremap <silent> <Leader>i :<C-U>nohlsearch<CR>

" Copy to system clipboard.
nnoremap <Leader>c "+y
vnoremap <Leader>c "+y
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

" Cycle through buffers.
nnoremap <Leader>, :bprevious<CR>
nnoremap <Leader>. :bnext<CR>

" Shortcut to toggle folds.
nnoremap <Leader><Tab> za

" Shortcut to open spell popup in insert mode.
inoremap <C-P> <C-X><C-S>
