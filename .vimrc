syntax on
set tabstop=2 softtabstop=2 shiftwidth=2 "2 spaces per tab
set autoindent
set smarttab
set expandtab "tabs as spaces

filetype indent on

set backspace=indent,eol,start

set formatoptions=tcroql "extend comments

set hlsearch "hilight search results

set colorcolumn=81 "mark the column at which lines should terminate
set cursorline "highlight the current line
set relativenumber "line numbers relative to current line

" Color scheme
colorscheme zellner
set t_Co=256 "256 color

" Rust-specific options
au filetype rust set matchpairs+=<:>

" Markdown-specific options
au filetype markdown set colorcolumn= "no highlit column
aut filetype markdown set spell "spell-check
