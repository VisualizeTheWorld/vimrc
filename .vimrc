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

    " Agda syntax highlighting
    Plug 'derekelkins/agda-vim'

    " Idris syntax highlighting
    Plug 'idris-hackers/idris-vim'

    " ARM assembly syntax highlighting
    Plug 'ARM9/arm-syntax-vim'

    " Makes vim a coq IDE
    Plug 'splintah/coquille', {'for':'coq', 'branch': 'pathogen-bundle'}

    if plugInstalled == 0
        echo "Installing plugins"
        echo ""
        :PlugInstall
    endif
call plug#end()

" Not plugins
syntax on
set expandtab shiftwidth=4 softtabstop=4 "4 spaces per tab, insert spaces instaed of tabs
set tabstop=8 "display existing tabs as 8 spaces
set autoindent
set smarttab
filetype indent on

let maplocalleader="," "for some plugins

set backspace=indent,eol,start

set formatoptions=tcroql "extend comments

set hlsearch "highlight search results

set colorcolumn=81 "mark the column at which lines should terminate
set cursorline "highlight the current line
set relativenumber "line numbers relative to current line
set number         "w/ absolute line number on current line

" Color scheme
colorscheme delek
set t_Co=256 "256 color

" Rust-specific options
au filetype rust set matchpairs+=<:>

" Text-specific options
au filetype text set colorcolumn= "no highlit column

" Markdown-specific options
au filetype markdown set colorcolumn= "no highlit column
aut filetype markdown set spell "spell-check

" Python-specific options
au BufRead,BufNewFile *.gpy set filetype=python "MULTI Python
au filetype python set colorcolumn= "no highlit column
let g:python_recommended_style = 0 "delete PEP-8

" Make Fortran highlighting better
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

" Prolog-specific options
au BufRead,BufNewFile *.pl,*.plt set filetype=prolog "I don't use Perl

" Assembly-specific options
au BufRead,BufNewFile *.arm set filetype=arm
