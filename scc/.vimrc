" Use pathogen to help with vim packages
execute pathogen#infect()

" Should enable mouse integration
:set mouse=a
" try to get it to stop opening X11 every time on open
:set clipboard=autoselect,exclude:screen-256color

" Turn on line numbering
:set number
" and show location in bottom right
:set ruler

" Set tab to be 4 spaces
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" only do case sensitive search if a capital (or \C) is included
:set ignorecase
:set smartcase

" set colors as downloaded from flazz's vim colorschemes git
set background=dark
" Seems not necessary as it may just use terminal's colorscheme by default
"colorscheme solarized
" :let g:solarized_contrast="high"

" set syntax highlighting on by default
syntax on
filetype plugin indent on

" Make backspace to work as more often is expected
set backspace=indent,eol,start


