" Disable bell and visual bell.
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Hide buffers instead of closing them.
set hidden

" Show line numbers.
set number

" Always show status line.
set laststatus=2

" Set indentation preferences.
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set ai

" Set search preferences.
set hlsearch
set ignorecase
set smartcase

" Set folding preferences.
set foldmethod=syntax
set nofoldenable

" Delete trailing whitespace.
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Customize session management.
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 5

" Set vimfiler preferences.
let g:vimfiler_as_default_explorer = 1
