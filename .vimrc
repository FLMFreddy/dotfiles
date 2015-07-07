set nocompatible
filetype off

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin section
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sjbach/lusty'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdcommenter'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Yggdroot/indentLine'
Plugin 'git@github.com:sjl/gundo.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'rdolgushin/groovy.vim'
Plugin 'joonty/vdebug'
Plugin 'altercation/vim-colors-solarized'

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
set foldmethod=syntax
set backspace=2

" Solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" NERDTreeToggle
noremap <leader>nt :NERDTreeToggle<cr>

" Trigger configuration
let g:UltiSnipsExpandTrigger="<leader><tab>"

let g:UltiSnipsEditSplit="vertical"
noremap <leader>us :UltiSnipsEdit<CR>

" YCM 
nnoremap <leader>jd :YcmCompleter GoTo<CR>
" Syntastic
let g:syntastic_python_checkers = ["frosted","python"]
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

" Close buffer
nnoremap <F2> :close<CR>

" GUI Font
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10

" map <leader>l to display listchars
noremap <leader>l :set list!<CR>
