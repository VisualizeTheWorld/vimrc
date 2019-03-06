" Setting up vim-plug
" Adapted https://github.com/jpdoyle/vimrc
let plugInstalled=1
let plug_file=expand('~/.vim/autoload/plug.vim')
if !filereadable(plug_file)
    echo "Installing vim-plug.."
    echo ""
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let plugInstalled=0
endif
call plug#begin('~/.vim/plugged')
    " Dependencies
    Plug 'let-def/vimbufsync' " For Coquille

    " Verifast syntax highlighting
    Plug 'VisualizeTheWorld/vim-verifast'

    " Makes vim a coq IDE
    Plug 'jpdoyle/coquille', {'for':'coq', 'branch': 'pathogen-bundle'}

    if plugInstalled == 0
        echo "Installing plugins"
        echo ""
        :PlugInstall
    endif
call plug#end()

" Not plugins
syntax on
set tabstop=2 softtabstop=2 shiftwidth=2 "2 spaces per tab
set autoindent
set smarttab
set expandtab "tabs as spaces

filetype indent on

set backspace=indent,eol,start

set formatoptions=tcroql "extend comments

set hlsearch "highlight search results

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
