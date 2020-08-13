""a Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'yuttie/comfortable-motion.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

filetype indent off						
filetype plugin on						
filetype off						

" No auto add comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Lightline stuff
let g:lightline = {
	\ 'colorscheme': 'wombat',
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

" My remapping
inoremap {<CR> {<CR>}<Esc>O<Tab>
map <F6> :setlocal spell! spelllang=en_us<CR>

" C program skeleton
augroup C
    au BufNewFile *.c 0r ~/.vim/skeleton.c
augroup end

" C++ program skeleton
augroup C++
    au BufNewFile *.cpp 0r ~/.vim/skeleton.cpp
augroup end
