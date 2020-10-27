" Should enable mouse integration
:set mouse=a

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
:set background=dark
" This isn't necessary because it uses the term's colors anyway
"colorscheme solarized

" set syntax highlighting on by default
:syntax on

" Make backspace to work as more often is expected
:set backspace=indent,eol,start

" Show tab characters explicitly
:set list
:set listchars=tab:␉·,eol:⏎,trail:␠,nbsp:⎵

" Setup UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsListSnippets = '<c-l>'

" Make tab completion in a command more BASH-like
set wildmode=longest,list,full
set wildmenu

