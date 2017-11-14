syntax enable

" Set ruler and status info
set ruler
set laststatus=2

" Set linenumbers
set number

set autoindent

" Remove scrollbars
set guioptions-=r
set guioptions-=L

" Tabstop
set expandtab
set shiftwidth=2
set softtabstop=2

imap jj <Esc>

" Maps - Window handling 
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>

" Map - break line ctrl-j
nnoremap <NL> i<CR><ESC>l


" Vundle Plugin configs
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

