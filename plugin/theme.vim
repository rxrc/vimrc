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
  let g:airline_theme = 'zenburn'
  let g:zenburn_high_Contrast = 1
  colorscheme zenburn
  set background=dark
else
  if empty($VIM_COLOR)
    let g:airline_theme = 'solarized'
    colorscheme solarized
  elseif $VIM_COLOR =~# "^base16-"
    let g:airline_theme = substitute($VIM_COLOR, '-', '_', '')
  endif

  if empty($VIM_BACKGROUND)
    set background=dark
  else
    if $VIM_BACKGROUND == 'light'
      set background=light
    else
      set background=dark
    endif
  endif
endif

" Set font.
if has('gui_running')
  set guifont=Inconsolata\-g\ 11
endif
