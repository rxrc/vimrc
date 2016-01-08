" Map enter to escape in insert mode.
inoremap <CR> <Esc>

" Use enter to open command-line mode.
nnoremap <CR> :
vnoremap <CR> :

" Fix enter behavior in quickfix and command-line mode.
augroup cr-local-mappings
  autocmd!
  autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
  autocmd CmdwinEnter * nnoremap <CR> <CR>
augroup END

" Allow escape to enter and exit command-line mode.
nnoremap <Esc> q:<C-W>_
augroup command-line-local-mappings
  autocmd!
  autocmd CmdwinEnter * nnoremap <Esc> :q<CR>
  autocmd CmdwinLeave * nnoremap <Esc> q:<C-W>_
augroup END

" Use Ctrl-H and Ctrl-L to navigate command input.
cnoremap <C-H> <Left>
cnoremap <C-L> <Right>

" Use Ctrl-K and Ctrl-J to navigate command history.
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

" Mappings to open command-line window.
nnoremap <Leader>: q:
vnoremap <Leader>: q:

" Mappings to open command-line window.
nnoremap <Leader>/ q/
vnoremap <Leader>/ q/
nnoremap <Leader>? q?
vnoremap <Leader>? q?

" Shortcuts for quit.
nnoremap <silent> <Leader><CR> :<C-U>quit<CR>
vnoremap <silent> <Leader><CR> :<C-U>quit<CR>

" Shortcuts for record.
nnoremap <Leader>q q
vnoremap <Leader>q q

" Use q and Q for ge and gE.
nnoremap q ge
nnoremap Q gE

" Swap ` with '.
nnoremap ` '
vnoremap ` '
nnoremap ' `
vnoremap ' `

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

" Shortcut to force reload file.
nnoremap <silent> <Leader>E :<C-U>edit!<CR>

" Map U to redo and <C-U> to U.
nnoremap U <C-R>
nnoremap <C-U> U

" Clear highlighting until next search.
nnoremap <silent> <Leader>o :<C-U>nohlsearch<CR>

" Shortcut to paste from expression register.
nnoremap <Leader>= :<C-U>put =

" Adds mappings for the system clipboard.
function! SystemClipboardMappings(register)
  " Copy to system clipboard.
  exec 'nnoremap <Leader>c "' . a:register . 'y'
  exec 'vnoremap <Leader>c "' . a:register . 'y'
  exec 'nnoremap <Leader>cc "' . a:register . 'yy'
  exec 'nnoremap <silent> <Leader>ca :<C-U>%y' . a:register . '<CR>'

  " Paste from system clipboard.
  exec 'nnoremap <Leader>p "' . a:register . 'p'
  exec 'nnoremap <Leader>P "' . a:register . 'P'

  " Save the newly mapped register.
  let g:mapped_system_clipboard = a:register
endfunction
call SystemClipboardMappings('+')

" Toggle system clipboard mappings between the + and * registers.
nnoremap <expr> cop
  \ g:mapped_system_clipboard == '+' ?
  \ ":<C-U>call SystemClipboardMappings('*')<CR>" :
  \ ":<C-U>call SystemClipboardMappings('+')<CR>"

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
nnoremap <Leader><Leader> za

" Shortcut to open spell popup in insert mode.
inoremap <C-P> <C-X><C-S>

" Shortcut to open external links.
nmap <Leader>x gx

" Shortcuts to open and close tabs.
nnoremap <Leader><Tab> :<C-U>tabnew<CR>
nnoremap <Leader><S-Tab> :<C-U>tabclose<CR>
