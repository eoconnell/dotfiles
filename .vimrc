execute pathogen#infect()

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set statusline=2
set showmatch
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
set cursorline
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set winwidth=79
" tell vim not to mess with the scrollback buffer
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
set number
syntax on
filetype plugin indent on

let mapleader=","

:set t_Co=256
:set background=dark
:color grb256

":set statusline=%<%f\ %({&ft})\ %-4(%m%)%=%-19(%31,%02%03V%)

nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk
