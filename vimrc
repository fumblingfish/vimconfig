" Set ruler and status info
set ruler
set laststatus=2

set autochdir

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

" Map leader
let mapleader=","


" Map - Change marker
set cpoptions+=$

" Maps - Window handling 
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Map uppercase key
nmap <leader>u ~


" Map - search toggle highlight \hj
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Map - break line ctrl-j
" nnoremap <NL> i<CR><ESC>l
nnoremap <S-k> i<CR><ESC>l

" Vundle Plugin configs
set nocompatible              " be iMproved, required
filetype off                  " required
" set
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
" Plugin 'hail2u/vim-css3-syntax'

" Statusbar
Plugin 'vim-airline/vim-airline'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" JS/CSS beutify
Plugin 'maksimr/vim-jsbeautify'

" CamelCaseMotion
Plugin 'bkad/CamelCaseMotion'

" Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

" Vim surround
Plugin 'tpope/vim-surround'

" Ctrlp - Full path fuzzy finder for vim
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
" Toogle NERDTree
nmap <silent> <leader>m :NERDTreeToggle<CR>

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" Vim-jsbeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css 
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" for sass
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

" CamelCaseMotion
call camelcasemotion#CreateMotionMappings('<leader>')
