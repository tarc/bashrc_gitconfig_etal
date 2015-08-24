" Vundle settings "
"""""""""""""""""""

if &diff
else

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
	Plugin 'a.vim'
	Plugin 'wesleyche/SrcExpl'
	Plugin 'scrooloose/nerdtree'
	Plugin 'wincent/command-t'
elseif has("win32unix") "For Cygwin
	Plugin 'https://github.com/tarc/bclose.git'
elseif has("unix") "Linux only
	"Plugin 'Valloric/YouCompleteMe'
	"Plugin 'https://github.com/wincent/Command-T.git'
	"Plugin 'taglist.vim'
	Plugin 'https://github.com/tarc/bclose.git'
	" Plugin 'jalcine/cmake.vim'
	"Plugin 'benmills/vimux'
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

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" context rules for various file extensions:
autocmd BufRead,BufNewFile *.py :set noexpandtab
autocmd BufRead,BufNewFile *.hs :set noexpandtab

set hidden
set number
set ruler

set autoindent
if has("autocmd")
    filetype plugin indent on
endif

nmap <F4> :TlistToggle<CR>
nmap <F8> :SrcExplToggle<CR>
nmap <c-n> :NERDTreeToggle<CR>
nmap <leader> jk :YcmCompleter GoToImprecise<CR>
nmap <c-tab> :A<CR>

let g:NERDTreeWinPos = "right"

let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
    \ ] 

colors koehler
syntax on
set backspace=2

set foldmethod=indent
set foldlevelstart=99
set encoding=utf-8

if has("win32") 
  set guifont=Courier_New:h14:cANSI
endif 


endif
