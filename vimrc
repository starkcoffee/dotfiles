execute pathogen#infect()
syntax on
"filetype plugin indent on
set expandtab
set ts=2
set sw=2
set ai

let mapleader=' '
let maplocalleader=','
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>b :CtrlPMRUFiles<CR>

set tags=.git/tags;tags

" https://ricostacruz.com/til/repeat-tmux-from-vim
" Repeat last command in the next tmux pane.
nnoremap <Leader>r :call <SID>TmuxRepeat()<CR>

function! s:TmuxRepeat()
  silent! exec "!tmux select-pane -l && tmux send up enter && tmux select-pane -l"
  redraw!
endfunction

let g:vimroom_guibackground='white'
let g:auto_save_silent = 1

" task editing stuffs
inoremap <c-t>[ [ ] 
inoremap <c-t>p 🎉 YAYAYAYAYA!!
nnoremap <c-t>d :s/\[ \]/\[x\]/<CR>:echo "GOOD JOB!!"<CR>

nnoremap <localleader>d :,w >> done<CR>dd<CR>
