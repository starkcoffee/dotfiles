set expandtab
set ts=4
set autoindent
set paste

let mapleader=' '

nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>ev :w<CR>:e $MYVIMRC<CR>
nnoremap <leader>sv :w<CR>:source $MYVIMRC<CR>
nnoremap <leader>vv :w<CR>:bdelete<CR>:source $MYVIMRC<CR>

call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()


