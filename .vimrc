set nocompatible
filetype off

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim\
call vundle#begin()

" Plugin section
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'wincent/Command-T'
Plugin 'sjbach/lusty'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

" Init powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Map leader to ,
let mapleader = ","
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set laststatus=2
set encoding=utf-8
set number
set relativenumber
set backup
set backupdir=~/.backupvim
set dir=~/.backupvim
set autoread
set hidden
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Solarized
syntax enable
"set background=dark
colorscheme badwolf
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3

" NERDTreeToggle
noremap <leader>nt :NERDTreeToggle<cr>

" Trigger configuration
let g:UltiSnipsExpandTrigger="tab"
let g:UltiSnipsJumpForwardTrigger="<c-b"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

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

" Close buffer
nnoremap <F2> :close<CR>

" GUI Font
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10

" map <leader>l to display listchars
noremap <leader>l :set list!<CR>
