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
set shiftwidth=3
set softtabstop=3

" Command - Toggle Colorschemes
" ----
" :TColors (F8 forward / )
"     Press F8 to use the next color scheme.
"     Press Shift-F8 to use the previous color scheme.
"     Press Alt-F8 to use a random color scheme.
" :SetColors all            -- all colors 
" :SetColors                -- list all colors 
" :SetColors blue slate ron -- use these schemes
" -----
" colorscheme wombat
command TColors :source ~/.vim/plugins/setcolors.vim

" Map - Reload .vimrc
" nnoremap <leader>sv :source $MYVIMRC<cr>

" Map - Change marker
set cpoptions+=$

" Maps - Window handling 
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Map - search toggle highlight \hj
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Map - break line ctrl-j
" nnoremap <NL> i<CR><ESC>l
nnoremap <S-k> i<CR><ESC>l

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

" Javascript highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Auto-pairs
Plugin 'jiangmiao/auto-pairs'

" Emmet
Plugin 'mattn/emmet-vim'

" CSS
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'

" Statusbar
Plugin 'vim-airline/vim-airline'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
" Toogle NERDTree
nmap <silent> <C-n> :NERDTreeToggle<CR>

" Emmet
let g:user_emmet_leader_key='<C-Z>'

