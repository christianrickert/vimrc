" Vi IMproved 9.1 - vimrc file
" Christian Rickert (2024-08-17)

"===============================================================================
"                                    Plugins
"===============================================================================

" Use VIM settings exclusively
set nocompatible

" Specify the plugin directory
call plug#begin('$HOME/.vim/vim-plug')

" Firefly - Vim Color Scheme
Plug 'christianrickert/vim-firefly'

" ALE (Asynchronous Lint Engine) plugin providing linting
let g:ale_fix_on_save=1  " fix files when they are saved
let g:ale_hover_cursor=0  " don't display information in the echo line
let g:ale_set_balloons=0  " don't display balloon messages or hover information
let g:ale_set_highlights=0  " don't set highlights for problems
let g:ale_virtualtext_cursor=0  " don't show problems with virtual-text
let g:ale_fixers={
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'go': ['gofmt'],
\	'python': ['ruff_format'],
\	'r': ['styler'],
\	'rust': ['rustfmt'],
\}
let g:ale_linters={
\	'go': ['staticcheck'],
\	'python': ['ruff'],
\	'r': ['lintr'],
\	'rust': ['analyzer'],
\}
Plug 'dense-analysis/ale'

" A light and configurable statusline/tabline plugin for Vim
set laststatus=2  " always show a status line
set noshowmode  " don't show Insert, Replace, or Visual mode message
Plug 'itchyny/lightline.vim'

" The Toolkit for Vim Color Scheme Designers!
Plug 'lifepillar/vim-colortemplate'

" Gutentags
Plug 'ludovicchabant/vim-gutentags'

" A collection of language packs for Vim
let g:polyglot_disabled=['sensible']
Plug 'sheerun/vim-polyglot'

let g:polyglot_disabled = ['sensible']
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()

" Executed automatically after vim-plug
filetype plugin indent on
syntax enable

"===============================================================================
"                                    Settings
"===============================================================================

" Color scheme
colorscheme firefly

" Custom fonts
if has("gui_running")
  set guifont=FiraCode-Retina:h13
  set macligatures
endif
set encoding=utf-8

" Manual variables
set autoindent  " copy indent from current line when starting a new line
set cmdheight=2  " number of screen lines to use for the command-line
set completeopt=menuone,noinsert,popup  " set options for Insert mode completion
set hlsearch  " with a previous search pattern, highlight all its matches
set nowrap  " lines longer than the width of the window will not wrap
set number  " precede each line with its line number
set omnifunc=syntaxcomplete#Complete  " set function for Insert mode omni completion
set path+=**  " add recursive downwards search to list of directories
set relativenumber  " show the line number relative to the line with the cursor
set showcmd  " show (partial) command in the last line of the screen
set showmatch  " when a bracket is inserted, briefly jump to the matching one
set tags+=./tags;/  " add tags file in current directoy to label jump list
set updatetime=1000  " update swap file after waiting this many milliseconds
set wildmenu  " operate command-line completion in an enhanced mode
set wildoptions=pum  " show completion matches in popup menu
