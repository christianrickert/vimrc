" Vi IMproved 9.1 - vimrc file
" Christian Rickert (2025-10-18)

" Plugins
" Use VIM settings exclusively
set nocompatible

" Specify the plugin directory
call plug#begin('$HOME/.vim/vim-plug')

" Firefly - Vim Color Scheme
Plug 'christianrickert/vim-firefly'

" ALE (Asynchronous Lint Engine) plugin providing linting
let g:ale_echo_cursor=0  " do not echo message near cursor in status line
let g:ale_fix_on_save=1  " fix files when they are saved
let g:ale_hover_cursor=0  " don't display information in the echo line
let g:ale_linters_explicit=1  " only run linters explicitly named in list
let g:ale_lint_on_text_changed='always'  " always check buffers on changes
let g:ale_sign_column_always=1  " open sign gutter (column) by default
let g:ale_set_balloons=0  " don't display balloon messages or hover information
let g:ale_virtualtext_cursor='all'  " show problems for all lines with virtualtext
let g:ale_fixers={
	\	'*': ['remove_trailing_lines', 'trim_whitespace'],
	\	'groovy': ['npm-groovy-lint'],
	\	'python': ['ruff_format'],
	\	'r': ['styler'],
	\	'rust': ['rustfmt'],
	\}
let g:ale_linters={
	\	'groovy': ['npm-groovy-lint'],
	\	'python': ['ruff'],
	\	'r': ['lintr'],
	\	'rust': ['analyzer'],
	\}
Plug 'dense-analysis/ale'

" The Toolkit for Vim Color Scheme Designers!
Plug 'lifepillar/vim-colortemplate'

" Gutentags
Plug 'ludovicchabant/vim-gutentags'

" A collection of language packs for Vim.
let g:polyglot_disabled = ['sensible']  " disable Polyglot defaults
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()

" Executed automatically after vim-plug
filetype plugin indent on  " enable filetype detection and indentation
syntax enable  " enable syntax highlighting with custom color settings

" Standard Plugin Variables
let g:matchparen_disable_cursor_hl=1  " don't highlight (blink) cursor parenthesis
let g:netrw_banner=0  " `netrw`: suppress the banner
let g:netrw_browse_split=3  " `netrw`: open file in new tab

" Global Program Variables
set autoindent  " copy indent from current line when starting a new line
set cmdheight=1  " number of screen lines to use for the command-line
set completeopt=menuone,noinsert,popup  " set options for Insert mode completion
set guicursor+=n-v:blinkon0  " set cursor block to non-blinking
set hlsearch  " with a previous search pattern, highlight all its matches
set foldmethod=indent  " fold lines with equal indent
set nowrap  " lines longer than the width of the window will not wrap
set number  " precede each line with its line number
set omnifunc=syntaxcomplete#Complete  " set function for Insert mode omni completion
set path+=**  " add recursive downwards search to list of directories
set relativenumber  " show the line number relative to the line with the cursor
set scrolloff=9  " minimal number of screen lines to keep above and below cursor
set showcmd  " show (partial) command in the last line of the screen
set tags+=./tags;/  " add tags file in current directoy to label jump list
set updatetime=2000  " update swap file after waiting this many milliseconds
set wildmenu  " operate command-line completion in an enhanced mode
set wildoptions=pum  " show completion matches in popup menu

" Color Scheme
colorscheme firefly

" Font Settings
if has("gui_running")
  set guifont=AtkinsonHyperlegibleMono-Medium:h13  " set font and size
  set linespace=4  " number of pixel lines inserted between characters
endif
set encoding=utf-8  " set character encoding to `utf-8`
