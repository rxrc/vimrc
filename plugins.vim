"
" Global Configuration
"

" Map space to leader.
let mapleader = "\<Space>"

" Libraries
Plug 'shougo/vimproc.vim', { 'do': 'make' }
Plug 'tpope/vim-repeat'

" Sensible Defaults
Plug 'tpope/vim-sensible'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Prompt and Statusline
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

"
" Editor
"

" Themes and Colors
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

" Syntax
Plug 'scrooloose/syntastic'
Plug 'chrisbra/colorizer'

" Whitespace
Plug 'vim-scripts/showtrailingwhitespace'
Plug 'vim-scripts/deletetrailingwhitespace'

" Parentheses
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 " must be set here

" Sneak
Plug 'justinmk/vim-sneak'
let g:sneak#streak = 1 " must be set here

" Autocompletion
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet'
Plug 'shougo/neosnippet-snippets'
let g:neocomplete#enable_at_startup = 1 " must be set here

" Initialize force_omni_input_patterns.
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

" Macros
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
let g:commentary_map_backslash = 0 " disable \\ commentary maps

"
" Internal Interfaces
"

" Buffer
Plug 'vim-scripts/bufkill.vim'

" Session
Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'

" Unicode
Plug 'chrisbra/unicode.vim'

" Ctags
Plug 'majutsushi/tagbar'

" Unite.vim and vimfiler
let g:unite_source_history_yank_enable = 1 " must be set here
Plug 'shougo/unite.vim' | Plug 'shougo/vimfiler.vim'

"
" External Interfaces
"

" Shell
Plug 'tpope/vim-dispatch'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" Portkey
Plug 'dsawardekar/portkey'

"
" Language Interfaces
"

" Clojure
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'venantius/vim-cljfmt'
Plug 'venantius/vim-eastwood'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-leiningen'
Plug 'guns/vim-clojure-highlight'

" CoffeeScript
Plug 'kchmck/vim-coffee-script'

" Ember
Plug 'dsawardekar/ember.vim'
Plug 'heartsentwined/vim-ember-script'
Plug 'heartsentwined/vim-emblem'

" Go
Plug 'fatih/vim-go'

" Haskell
Plug 'bitc/vim-hdevtools'

" Python
Plug 'tmhedberg/simpylfold'
Plug 'davidhalter/jedi-vim'
  \ | Plug 'lambdalisue/vim-pyenv', { 'for': ['python', 'python3'] }

" Ruby
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
