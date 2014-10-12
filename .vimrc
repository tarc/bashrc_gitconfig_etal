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

if has("win32") 
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'taglist.vim'
	Plugin 'https://github.com/tarc/bclose.git'
elseif has("win32unix") "For Cygwin
	Plugin 'https://github.com/tarc/bclose.git'
elseif has("unix") "Linux only
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'https://github.com/wincent/Command-T.git'
	Plugin 'taglist.vim'
	Plugin 'https://github.com/tarc/bclose.git'
	" Plugin 'jalcine/cmake.vim'
	Plugin 'benmills/vimux'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe Options "
"""""""""""""""""""""""""
if has("win32") 
	let g:ycm_extra_conf_globlist = ['C:\projects\*', 'C:\Projetos\*', '!C:\*']
else
	let g:ycm_extra_conf_globlist = ['~/projects/*','!~/*']
endif
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
nnoremap <leader> jk :YcmCompleter GoToDefinition<CR>

colors koehler
syntax on
set backspace=2

"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
