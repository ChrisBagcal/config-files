" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'yuttie/comfortable-motion.vim'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

filetype indent off
filetype plugin off

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
set laststatus=2
set noshowmode

syntax enable
set smartindent
set number
set relativenumber
set hidden

colorscheme desert

inoremap {<Enter> {<Enter>}<Esc>O
noremap <Left> <Esc>:bp<Enter>
noremap <Right> <Esc>:bn<Enter>
inoremap <Right> <Esc>:bn<Enter>
inoremap <Left> <Esc>:bp<Enter>
