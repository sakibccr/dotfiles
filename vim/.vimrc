" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

" Make j,k work sanely in wrapped lines

nmap j gj
nmap k gk

" Move between open buffers.
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Use the space key to toggle folds
nnoremap <space> za
vnoremap <space> zf

" Resize panes when window/terminal gets resize
autocmd VimResized * :wincmd =

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------
set hidden
set nocompatible

set foldmethod=indent       " Set the fold method to indentation
set foldlevelstart=20

set autoindent              " Carry over indenting from previous line
set backspace=indent,eol,start
                            " Allow backspace beyond insertion point

set encoding=utf8           " UTF-8 by default
set fileformats=unix,dos,mac
                            " Prefer Unix

set hlsearch                " Hilight searching
set ignorecase              " Case insensitive
set incsearch               " Search as you type
set infercase               " Completion recognizes capitalization
set linebreak               " Break long lines by word, not char


set matchtime=2             " Tenths of second to hilight matching paren

set nomodeline              " teh hackerz!!!1


set ruler                   " Show row/col and percentage

set scrolloff=10            " Keep cursor away from this many chars top/bot

set showmatch               " Hilight matching braces/parens/etc.
set smartcase               " Lets you search for ALL CAPS
set suffixes+=.pyc          " Ignore these files when tab-completing
set textwidth=100           " 100 is the new 80
set wildmenu                " Show possible completions on command line
" set wildmode=list:longest,full " List all options and complete
" set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules  " Ignore certain files in tab-completion

" Essential for filetype plugins.
filetype plugin on
filetype indent on

" Always four spaces for tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

syntax on
set list
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·

set listchars=trail:~,space:·

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'c' : 'CMD',
      \ }

let g:NERDTreeNodeDelimiter = "\u00a0"

" ALE config
let g:ale_sign_column_always = 1
let g:ale_fixers = {'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'black', 'isort', 'reorder-python-imports', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
