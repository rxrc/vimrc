set directory=~/.vim/backup
set backupdir=~/.vim/backup

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

let g:NERDTreeChDirMode=2

if has('gui_running')
  colorscheme molokai
  set background=dark
else
  set background=dark
endif
