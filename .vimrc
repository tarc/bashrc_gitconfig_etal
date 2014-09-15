" Vundle settings "
"""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/wincent/Command-T.git'
Plugin 'taglist.vim'
Plugin 'https://github.com/tarc/bclose.git'
"Plugin 'jalcine/cmake.vim'
Plugin 'benmills/vimux'

call vundle#end()
filetype plugin indent on
"""""""""""""""""""
"""""""""""""""""""


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

"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
