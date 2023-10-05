set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-fugitive
Plugin 'https://github.com/tpope/vim-fugitive'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Vim-airline
Plugin 'bling/vim-airline'

" Vim-airline themes
Plugin 'https://github.com/vim-airline/vim-airline-themes'

" Vim Easymotion
Plugin 'https://github.com/easymotion/vim-easymotion.git'

" Vim-go
Plugin 'https://github.com/fatih/vim-go.git'

" Seoul Theme
Plugin 'https://github.com/junegunn/seoul256.vim.git'

" Youcompleteme 
Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""" CUSTOM CONFIG
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_semantic_triggers = { 'c': [ 're!\w{2}' ] }
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Status line
set laststatus=2

" Lightline theme config
let g:lightline = { 'colorscheme': 'seoul256' }

" macOS delete key problem fix
set backspace=indent,eol,start

" Indent automatically depending on filetype
filetype indent on
filetype plugin on
set autoindent

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Turn on line numbering. Turn it off with "set nonu"
set number

" Set syntax on
syntax enable
let g:seoul256_background = 235
colorscheme seoul256

" YouCompleteMe toolbox coloring
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Case insensitive search
set ic

" Higlhight search
"set hls

" Set virtual cursor line
"set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" Wrap text instead of being on one line
set lbr

" Update GUI font (MacVim etc.)
set guifont=Monaco:h12

" Change the backup folder of vim
set backupdir=/Users/canartuc/Documents/backups/vim
set directory=/Users/canartuc/Documents/backups/vim

set encoding=utf-8
set fileencoding=utf-8

" Special additions w.r.t. programming languages
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=79
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'
let python_highlight_all = 1

let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Cursor mode settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
