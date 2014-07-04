set nocompatible
filetype off

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim\
call vundle#begin()

" Plugin section
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" Init powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Init ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Map leader to ,
let mapleader = ","
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set laststatus=2
set encoding=utf-8
set nu
set backup
set backupdir=~/.backupvim
set dir=~/.backupvim
set autoread

" NERDTree specific settings
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

" Solarized
let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized

" NERDTreeToggle
noremap <leader>nt :NERDTreeToggle<cr>

" Edit the .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source the .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Exit insert mode
inoremap jk <esc>

" Save and exit the file
nnoremap ZZ :wq<cr>

" match trailing whitespace
match ErrorMsg '\s\+$'

" delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Make space more useful
nnoremap <space> za

" Flake8 configuration
let g:flake8_ignore="E501"
