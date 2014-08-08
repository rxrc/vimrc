set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set scrolloff=3 " keep 3 lines when scrolling
set ai " set auto-indenting on for programming

set showcmd " display incomplete commands
set nobackup " do not keep a backup file
set number " show line numbers

set hlsearch " highlight searches
set incsearch " do incremental searching
set showmatch " jump to matches when entering regexp
set ignorecase " ignore case when searching
set smartcase " no ignorecase if Uppercase char present

set spell spelllang=en_us
set mousemodel=popup_setpos

if has('gui_running')
  colorscheme molokai
  set background=dark
else
  set background=dark
endif
