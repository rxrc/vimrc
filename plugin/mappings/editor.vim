" Double-tap leader to open command-line mode.
nnoremap <Leader><Leader> :
vnoremap <Leader><Leader> :

" Use Ctrl-H and Ctrl-L to navigate command input.
cnoremap <C-H> <Left>
cnoremap <C-L> <Right>

" Use Ctrl-K and Ctrl-J to navigate command history.
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

" Use : to open command-line window.
nnoremap <Leader>: q:
vnoremap <Leader>: q:

" Shortcuts for quit.
nnoremap <silent> Q :<C-U>quit<CR>
vnoremap <silent> Q :<C-U>quit<CR>

" Shortcuts for record.
nnoremap <Leader>q q
vnoremap <Leader>q q

" Shortcut for new.
nnoremap <silent> <Leader>n :<C-U>enew<CR>

" Shortcuts for force quit.
nnoremap <silent> <Leader>Q :<C-U>quit!<CR>
vnoremap <silent> <Leader>Q :<C-U>quit!<CR>

" Shortcut to quit all.
nnoremap <silent> <C-Q> :<C-U>quitall<CR>

" Shortcuts for update and force write.
nnoremap <silent> <Leader>s :<C-U>update<CR>
nnoremap <silent> <Leader>S :<C-U>write!<CR>

" Shortcut for redo.
nnoremap <Leader>r <C-R>

" Clear highlighting until next search.
nnoremap <silent> <Leader>oi :<C-U>nohlsearch<CR>

" Shortcut to paste from expression register.
nnoremap <Leader>= "=

" Copy to system clipboard.
nnoremap <Leader>c "+y
vnoremap <Leader>c "+y
nnoremap <Leader>cc "+yy
nnoremap <silent> <Leader>ca :<C-U>%y+<CR>

" Paste from system clipboard.
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" Split frame.
nnoremap <silent> <Leader>H :<C-U>topleft vsplit<CR>
nnoremap <silent> <Leader>L :<C-U>botright vsplit<CR>
nnoremap <silent> <Leader>K :<C-U>topleft split<CR>
nnoremap <silent> <Leader>J :<C-U>botright split<CR>

" Split window.
nnoremap <silent> <Leader>h :<C-U>leftabove vsplit<CR>
nnoremap <silent> <Leader>l :<C-U>rightbelow vsplit<CR>
nnoremap <silent> <Leader>k :<C-U>leftabove split<CR>
nnoremap <silent> <Leader>j :<C-U>rightbelow split<CR>

" Cycle through buffers.
nnoremap <silent> <Leader>, :<C-U>bprevious<CR>
nnoremap <silent> <Leader>. :<C-U>bnext<CR>

" Shortcut to toggle folds.
nnoremap <Leader><Tab> za

" Shortcut to open spell popup in insert mode.
inoremap <C-P> <C-X><C-S>

" Shortcut to open external links.
nmap <Leader>x gx
