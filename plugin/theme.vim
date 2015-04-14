" Set maximum terminal color space.
set t_Co=256

" Disable Powerline.
let g:powerline_loaded = 1

" Use Powerline fonts for vim-airline.
let g:airline_powerline_fonts = 1

" Set promptline.vim theme.
let g:promptline_theme = 'airline'

" Set colorscheme.
if has('gui_running')
  let g:airline#extensions#tmuxline#enabled = 0
  colorscheme molokai
  set background=dark
else
  set background=dark
  colorscheme solarized
endif

" Set font.
if has('gui_running')
  set guifont=Inconsolata\-g\ 11
endif
