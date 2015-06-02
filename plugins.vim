"
" Global Configuration
"

" Map space to leader.
let mapleader = "\<Space>"

" Libraries
NeoBundle 'xolox/vim-misc' " for xolox/vim-session
NeoBundle 'tpope/vim-repeat'

" Sensible Defaults
NeoBundle 'tpope/vim-sensible'

" EditorConfig
NeoBundle 'editorconfig/editorconfig-vim'

" Prompt and Statusline
NeoBundle 'bling/vim-airline'
NeoBundle 'edkolev/promptline.vim'
NeoBundle 'edkolev/tmuxline.vim'

"
" Editor
"

" Themes and Colors
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'

" Syntax
NeoBundle 'scrooloose/syntastic'

" Whitespace
NeoBundle 'vim-scripts/showtrailingwhitespace'
NeoBundle 'vim-scripts/deletetrailingwhitespace'

" Parentheses
NeoBundle 'luochen1990/rainbow'
let g:rainbow_active = 1 " must be set here

" Tab
NeoBundle 'ervandew/supertab'

" Macros
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
let g:commentary_map_backslash = 0 " disable \\ commentary maps

"
" Internal Interfaces
"

" Buffer
NeoBundle 'vim-scripts/bufkill.vim'

" Session
NeoBundle 'xolox/vim-session'

" Unicode
NeoBundle 'chrisbra/unicode.vim'

" Unite.vim
let g:unite_source_history_yank_enable = 1 " must be set here
NeoBundle 'shougo/unite.vim'

"
" External Interfaces
"

" File
NeoBundle 'shougo/vimfiler.vim'

" Shell
NeoBundle 'tpope/vim-dispatch'

" Git
NeoBundle 'vim-scripts/gitignore'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'

" tmux
NeoBundle 'christoomey/vim-tmux-navigator'

" Portkey
NeoBundle 'dsawardekar/portkey'

"
" Language Interfaces
"

" Clojure
NeoBundle 'guns/vim-sexp'
NeoBundle 'tpope/vim-sexp-mappings-for-regular-people'
NeoBundle 'venantius/vim-cljfmt'
NeoBundle 'venantius/vim-eastwood'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-leiningen'
NeoBundle 'guns/vim-clojure-highlight'

" CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'

" Ember
NeoBundle 'dsawardekar/ember.vim'
NeoBundle 'heartsentwined/vim-ember-script'
NeoBundle 'heartsentwined/vim-emblem'

" Go
NeoBundle 'fatih/vim-go'

" Haskell
NeoBundle 'bitc/vim-hdevtools'
