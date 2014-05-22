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
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git@github.com:farseer90718/vim-taskwarrior.git'
Plugin 'git@github.com:klen/python-mode.git'

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

" NERDTree specific settings
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

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
