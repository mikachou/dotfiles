" VIM Configuration

" pathogen
"call pathogen#infect()

" No compatibility with Vi
set nocompatible

" Vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
call vundle#end()
filetype plugin indent on

" Display
set title
set number
set ruler
set wrap
set scrolloff=3

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Beep
set visualbell
set noerrorbells

" Backspace
set backspace=indent,eol,start

" Hides files while opening new files
set hidden

" Syntax highlighting
syntax enable

" theme
set background=dark
colorscheme solarized
set guifont=Liberation\ Mono\ for\ Powerline\ 10
set antialias

" file explorer
autocmd vimenter * NERDTree  

" avoid <ESC> key
:imap ;; <Esc>
:map ;; <Esc> 

" leader key
let mapleader=","

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" mouse
set mousemodel=extend

" Disable all blinking:
set guicursor+=a:blinkon0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" tabline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
