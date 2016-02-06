"
" Global Configuration
"

" Map space to leader.
let mapleader = "\<Space>"
let maplocalleader = "\\"

" Libraries
Plug 'shougo/vimproc.vim',
     \ { 'do': 'make \|\| gmake' }

Plug 'tpope/vim-repeat'

" Sensible Defaults
Plug 'tpope/vim-sensible'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Prompt and Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'jnurmine/zenburn'

" Syntax
Plug 'scrooloose/syntastic'
Plug 'chrisbra/colorizer'

" Text Objects
Plug 'kana/vim-textobj-user'
     \ | Plug 'kana/vim-textobj-entire'

" Whitespace
Plug 'ntpeters/vim-better-whitespace'

" Parentheses and Context
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

" Sneak
Plug 'justinmk/vim-sneak'

" Clipboard
Plug 'svermeulen/vim-easyclip'

" Macros
Plug 'bronson/vim-visual-star-search'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

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
Plug 'mbbill/undotree'

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

" Vim-polyglot
Plug 'sheerun/vim-polyglot'

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

" Ember
Plug 'dsawardekar/ember.vim',
     \ { 'for': ['javascript', 'handlebars.ember'] }

" Haskell
Plug 'bitc/vim-hdevtools',
     \ { 'for': 'haskell' }

" HTML
Plug 'mattn/emmet-vim',
     \ { 'for': ['css', 'html', 'html.handlebars', 'liquid', 'sass', 'scss'] }

" LaTeX
Plug 'lervag/vimtex',
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
" Colorizer

" Enable colors for specific file types.
let g:colorizer_auto_filetype='css,html,html.handlebars,scss,sass'

"
" Auto Pairs

" Remap <C-CR> and <S-CR> not <CR>.
let g:AutoPairsMapCR = 0
inoremap <silent> <C-CR> <CR><C-R>=AutoPairsReturn()<CR>
imap <S-CR> <C-CR>

" Only remap <BS> and not <C-H>.
let g:AutoPairsMapBS = 0
inoremap <silent> <BS> <C-R>=AutoPairsDelete()<CR>

"
" Rainbow Parentheses

" Enable rainbow parentheses.
let g:rainbow_active = 1

"
" Sneak

" Use Sneak streak mode.
let g:sneak#streak = 1

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
let g:SignatureMap = { 'Leader': "\<Leader\>;" }

"
" Commentary

" Disable \\ commentary maps.
let g:commentary_map_backslash = 0

"
" fzf

" Set fzf command prefix.
let g:fzf_command_prefix = 'Fzf'

"
" Vim-polyglot

" Disable select language packs.
let g:polyglot_disabled = ['latex']

"
" Ruby

" Disable default ri.vim mappings.
let g:ri_no_mappings = 1
