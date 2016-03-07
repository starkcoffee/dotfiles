set expandtab
set ts=4
set autoindent

let mapleader=' '

let g:auto_save = 1  " enable AutoSave on Vim startup

nnoremap <leader>f :NERDTreeToggle<CR>

nnoremap <leader>ev :w<CR>:e $MYVIMRC<CR>
nnoremap <leader>sv :w<CR>:source $MYVIMRC<CR>
nnoremap <leader>vv :w<CR>:bdelete<CR>:source $MYVIMRC<CR>

nnoremap <c-o> :CtrlPMRUFiles<CR>

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'git@github.com:PeterRincker/vim-argumentative.git'
Plug 'git@github.com:vim-scripts/vim-auto-save.git'
Plug 'git://github.com/jiangmiao/auto-pairs.git'
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'git@github.com:rking/ag.vim.git'
call plug#end()


