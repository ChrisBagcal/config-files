" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'yuttie/comfortable-motion.vim'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

" Plugin settings
" Vimplug stuff
filetype indent off						
filetype plugin off
" Lightline stuff
let g:lightline = {
	\ 'colorscheme': 'OldHope',
	\ }
set laststatus=2
set noshowmode


" Personal settings
set autoindent
set relativenumber 
set number
syntax on
set incsearch
set wrap!
set hidden

" Buffer remaps
map <left> :bp<CR>
inoremap <left> <Esc>:bp<CR>
map <right> :bn<CR>
inoremap <right> <Esc>:bn<CR>
map <down> :ls<CR>
inoremap <down> <Esc>:ls<CR>
map <up> :e 
inoremap <up> <Esc>:e 
nnoremap <Leader>\b :b


" Tab manipulation remapping
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" My remapping
inoremap {<CR> {<CR>}<Esc>O<Tab>
noremap <Leader>\t :botright vertical terminal<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>

" C program skeleton
augroup C
    au BufNewFile *.c 0r ~/.vim/skeleton.c
augroup end

" C++ program skeleton
augroup C++
    au BufNewFile *.cpp 0r ~/.vim/skeleton.cpp
augroup end
