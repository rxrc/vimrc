"
" Global Configuration
"

" Map space to leader.
let mapleader = "\<Space>"

" Libraries
Plug 'shougo/vimproc.vim', { 'do': 'make \|\| gmake' }
Plug 'tpope/vim-repeat'

" Sensible Defaults
Plug 'tpope/vim-sensible'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Prompt and Statusline
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

" Projectionist
Plug 'tpope/vim-projectionist'

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

" Sneak
Plug 'justinmk/vim-sneak'

" Clipboard
Plug 'svermeulen/vim-easyclip'

" Autocompletion
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet'
Plug 'shougo/neosnippet-snippets'

" Macros
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

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
Plug 'shougo/unite.vim' | Plug 'shougo/vimfiler.vim'

"
" External Interfaces
"

" Documentation
Plug 'keith/investigate.vim'

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
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-clojure-highlight'
Plug 'venantius/vim-cljfmt'
Plug 'venantius/vim-eastwood'

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

" Jade
Plug 'digitaltoad/vim-jade'

"JavaScript
Plug 'pangloss/vim-javascript'

" LaTeX
Plug 'latex-box-team/latex-box'

" Node.js
Plug 'moll/vim-node'
Plug 'ahayman/vim-nodejs-complete'

" Python
Plug 'tmhedberg/simpylfold'
Plug 'davidhalter/jedi-vim' | Plug 'lambdalisue/vim-pyenv'

" React
Plug 'mxw/vim-jsx'

" Ruby
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

"
" Initialization Settings
"

"
" Rainbow Parentheses

" Enable rainbow parentheses.
let g:rainbow_active = 1 " must be set here

"
" Sneak

" Use Sneak streak mode.
let g:sneak#streak = 1 " must be set here

"
" neocomplete

" Enable neocomplete.
let g:neocomplete#enable_at_startup = 1

" Initialize input_patterns.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Initialize force_omni_input_patterns.
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

"
" Commentary

" Disable \\ commentary maps.
let g:commentary_map_backslash = 0

"
" Unite.vim

" Enable yank history.
let g:unite_source_history_yank_enable = 1
