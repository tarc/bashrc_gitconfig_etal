" Vundle settings "
"""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32") 
	" remove cmake from path because of buggy dll it includes which breaks
	" compiled ycm
	let $PATH = substitute($PATH, "C:[^;]*CMake[^;]*\\(;\\|$\\)", "", "g")

    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'https://github.com/wincent/Command-T.git'
" Plugin 'taglist.vim'
" Plugin 'https://github.com/tarc/bclose.git'
" Plugin 'jalcine/cmake.vim'
" Plugin 'benmills/vimux'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe Options "
"""""""""""""""""""""""""
let g:ycm_extra_conf_globlist = ['~/projects/*','!~/*']
"""""""""""""""""""""""""
"""""""""""""""""""""""""

set mouse=a

set shiftwidth=4
set softtabstop=4
set tabstop=4

set hidden
set number

set autoindent
if has("autocmd")
    filetype plugin indent on
endif

nnoremap <F4> :TlistToggle<CR>

colors koehler
syntax on

"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
