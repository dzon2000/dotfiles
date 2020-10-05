set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
call vundle#end()            " required
filetype plugin indent on    " required

set rnu
syntax on

map <F9> :NERDTreeToggle<CR>
:iabbrev </ </<C-X><C-O>
:imap <C-Space> <C-X><C-O>

set laststatus=2
set noshowmode

let g:lightline = {
	\ 'colorscheme': 'nord',
	\ }
