"
" Global Configuration
"

" Map space to leader.
let mapleader = "\<Space>"

" Libraries
Plug 'shougo/vimproc.vim',
     \ { 'do': 'make \|\| gmake' }

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
Plug 'ntpeters/vim-better-whitespace'

" Parentheses
Plug 'luochen1990/rainbow'

" Sneak
Plug 'justinmk/vim-sneak'

" Clipboard
Plug 'svermeulen/vim-easyclip'

" Macros
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Buffer
Plug 'moll/vim-bbye'

" Yank
Plug 'shougo/neoyank.vim'

"
" Internal Interfaces
"

" Autocompletion
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet'
Plug 'shougo/neosnippet-snippets'

" Marks
Plug 'kshenoy/vim-signature'

" Undo
Plug 'sjl/gundo.vim'

" Session
Plug 'xolox/vim-misc'
     \ | Plug 'xolox/vim-session'

" Unicode
Plug 'chrisbra/unicode.vim'

" Ctags
Plug 'majutsushi/tagbar'

" Unite.vim and vimfiler
Plug 'shougo/unite.vim'
     \ | Plug 'shougo/vimfiler.vim'

"
" External Interfaces
"

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Documentation
Plug 'keith/investigate.vim'

" Shell
Plug 'tpope/vim-dispatch'

" The Silver Searcher
Plug 'rking/ag.vim'

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
Plug 'tpope/vim-fireplace',
     \ { 'for': 'clojure' }

Plug 'tpope/vim-salve',
     \ { 'for': 'clojure' }

Plug 'guns/vim-sexp',
     \ { 'for': 'clojure' }

Plug 'tpope/vim-sexp-mappings-for-regular-people',
     \ { 'for': 'clojure' }

Plug 'guns/vim-clojure-highlight',
     \ { 'for': 'clojure' }

Plug 'venantius/vim-cljfmt',
     \ { 'for': 'clojure' }

Plug 'venantius/vim-eastwood',
     \ { 'for': 'clojure' }

" CoffeeScript
Plug 'kchmck/vim-coffee-script',
     \ { 'for': 'coffee' }

" Ember
Plug 'dsawardekar/ember.vim',
     \ { 'for': ['javascript', 'handlebars.ember'] }

Plug 'heartsentwined/vim-ember-script',
     \ { 'for': 'ember-script' }

Plug 'heartsentwined/vim-emblem',
     \ { 'for': 'emblem' }

" Go
Plug 'fatih/vim-go',
     \ { 'for': ['go', 'gohtmltmpl'] }

" Haskell
Plug 'bitc/vim-hdevtools',
     \ { 'for': 'haskell' }

" Jade
Plug 'digitaltoad/vim-jade',
     \ { 'for': 'jade' }

"JavaScript
Plug 'pangloss/vim-javascript',
     \ { 'for': 'javascript' }

" LaTeX
Plug 'latex-box-team/latex-box',
     \ { 'for': 'tex' }

" Node.js
Plug 'moll/vim-node',
     \ { 'for': 'javascript' }

Plug 'ahayman/vim-nodejs-complete',
     \ { 'for': 'javascript' }

" Python
Plug 'tmhedberg/simpylfold',
     \ { 'for': 'python' }

Plug 'davidhalter/jedi-vim',
     \ { 'for': 'python' }
     \ | Plug 'lambdalisue/vim-pyenv',
              \ { 'for': 'python' }

" React
Plug 'mxw/vim-jsx',
     \ { 'for': 'javascript.jsx' }

" Ruby
Plug 'tpope/vim-rbenv',
     \ { 'for': 'ruby' }

Plug 'tpope/vim-bundler',
     \ { 'for': 'ruby' }

Plug 'danchoi/ri.vim',
     \ { 'for': 'ruby' }

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
" Signature

" Set signature leader.
let g:SignatureMap = { 'Leader': "q" }

"
" Commentary

" Disable \\ commentary maps.
let g:commentary_map_backslash = 0

"
" fzf

" Set fzf command prefix.
let g:fzf_command_prefix = 'Fzf'

"
" Ruby

" Disable default ri.vim mappings.
let g:ri_no_mappings = 1
