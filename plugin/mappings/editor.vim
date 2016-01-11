" Map enter to escape in insert mode.
inoremap <CR> <Esc>

" Use enter to open command-line mode.
nnoremap <CR> :
vnoremap <CR> :

" Fix enter behavior in quickfix and command-line windows.
augroup cr-local-mappings
  autocmd!
  autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
  autocmd CmdwinEnter * nnoremap <CR> <CR>
  autocmd CmdwinLeave * nnoremap <CR> :
augroup END

" Use q and Q for ge and gE.
nmap q ge
vmap q ge
omap q ge
nmap Q gE
vmap Q gE
omap Q gE

" Map U to redo and <C-U> to U.
nnoremap U <C-R>
nnoremap <C-U> U

" Swap ` with '.
nnoremap ` '
vnoremap ` '
nnoremap ' `
vnoremap ' `

" Make & behave like &&.
nnoremap <silent> & :<C-U>&&<CR>
xnoremap <silent> & :<C-U>&&<CR>

" Allow escape to open and close command-line window.
nnoremap <Esc> q:
augroup command-line-local-mappings
  autocmd!
  autocmd CmdwinEnter * nnoremap <silent> <Esc> :<C-U>q<CR>
  autocmd CmdwinLeave * nnoremap <Esc> q:
  autocmd CmdwinEnter * vnoremap <silent> <Esc> :<C-U>q<CR>
  autocmd CmdwinLeave * vnoremap <Esc> q:
augroup END

" Use Ctrl-H and Ctrl-L to navigate command input.
cnoremap <C-H> <Left>
cnoremap <C-L> <Right>

" Use Ctrl-K and Ctrl-J to navigate command history.
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

" Add shortcuts for $, ^, and %.
nnoremap <C-A> ^
vnoremap <C-A> ^
nnoremap <C-E> $
vnoremap <C-E> $
nnoremap <C-R> %
vnoremap <C-R> %

" Provide alternate mapping for q since it is overridden above.
nnoremap <Leader>q q
vnoremap <Leader>q q

" Add shortcut to toggle folds.
nnoremap <Leader><Leader> za

" Add shortcut to open external links.
nmap <Leader>x gx

" Add shortcuts to split the window.
nnoremap <silent> <Leader>h :<C-U>leftabove vsplit<CR>
nnoremap <silent> <Leader>l :<C-U>rightbelow vsplit<CR>
nnoremap <silent> <Leader>k :<C-U>leftabove split<CR>
nnoremap <silent> <Leader>j :<C-U>rightbelow split<CR>

" Add shortcuts to split the frame.
nnoremap <silent> <Leader>H :<C-U>topleft vsplit<CR>
nnoremap <silent> <Leader>L :<C-U>botright vsplit<CR>
nnoremap <silent> <Leader>K :<C-U>topleft split<CR>
nnoremap <silent> <Leader>J :<C-U>botright split<CR>

" Add shortcuts to open and close tabs.
nnoremap <Leader><Tab> :<C-U>tabnew<CR>
nnoremap <Leader><S-Tab> :<C-U>tabclose<CR>

" Add shortcuts to cycle through tabs.
nnoremap <silent> <Leader>, gT
nnoremap <silent> <Leader>. gt

" Add shortcuts to open command-line and search history windows.
nnoremap <Leader>: q:
vnoremap <Leader>: q:
nnoremap <Leader>/ q/
vnoremap <Leader>/ q/
nnoremap <Leader>? q?
vnoremap <Leader>? q?

" Add shortcut to clear highlighting until next search.
nnoremap <silent> <Leader>o :<C-U>nohlsearch<CR>

" Add shortcut for new.
nnoremap <silent> <Leader>n :<C-U>enew<CR>

" Add shortcut to force reload file.
nnoremap <silent> <Leader>E :<C-U>edit!<CR>

" Add shortcuts for update and force write.
nnoremap <silent> <Leader>s :<C-U>update<CR>
nnoremap <silent> <Leader>S :<C-U>write!<CR>

" Add shortcuts for quit.
nnoremap <silent> <Leader><CR> :<C-U>quit<CR>
vnoremap <silent> <Leader><CR> :<C-U>quit<CR>

" Add shortcuts for force quit.
nnoremap <silent> <Leader>Q :<C-U>quit!<CR>
vnoremap <silent> <Leader>Q :<C-U>quit!<CR>

" Add shortcut to quit all.
nnoremap <silent> <C-Q> :<C-U>quitall<CR>

" Add shortcut to paste from the expression register.
nnoremap <Leader>= :<C-U>put =

" Adds mappings for the system clipboard.
function! SystemClipboardMappings(register)
  " Copy to system clipboard.
  exec 'nnoremap <Leader>c "' . a:register . 'y'
  exec 'vnoremap <Leader>c "' . a:register . 'y'
  exec 'nnoremap <Leader>cc "' . a:register . 'yy'

  " Paste from system clipboard.
  exec 'nnoremap <Leader>p "' . a:register . 'p'
  exec 'nnoremap <Leader>P "' . a:register . 'P'

  " Save the newly mapped register.
  let g:mapped_system_clipboard = a:register
endfunction

" Create the system clipboard mappings using the + register.
call SystemClipboardMappings('+')

" Toggle system clipboard mappings between the + and * registers.
nnoremap <expr> cop
  \ g:mapped_system_clipboard == '+' ?
  \ ":<C-U>call SystemClipboardMappings('*')<CR>" :
  \ ":<C-U>call SystemClipboardMappings('+')<CR>"

" Toggle colored column.
nnoremap <expr><silent> com
  \ &colorcolumn == '' ?
  \ ":<C-U> set colorcolumn=81<CR>" :
  \ ":<C-U> set colorcolumn=<CR>"
