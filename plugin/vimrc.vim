set directory=~/.vim/backup
set backupdir=~/.vim/backup

set t_Co=256

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set ai
set number
set hlsearch
set ignorecase
set smartcase

set spell spelllang=en_us
set mousemodel=popup_setpos

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set laststatus=2

let g:powerline_loaded = 1

let g:airline_powerline_fonts = 1

let g:NERDTreeChDirMode = 2

let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

if has('gui_running')
  colorscheme molokai
  set background=dark
else
  set background=dark

  if strlen($TMUX)
    let g:airline_theme = 'solarized'
  endif
endif

if has('gui_running')
  set guifont=Inconsolata\ XL\ 10
endif
