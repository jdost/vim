" leader
let mapleader = ','
" backspace behavior
set backspace=indent,eol,start

" tab controls
map <F4> :tabnext<cr>
map <F3> :tabprevious<cr>
imap <F4> <Esc>:tabnext<cr>
imap <F3> <Esc>:tabprevious<cr>

" split controls
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
imap <C-J> <Esc><C-W>j
imap <C-K> <Esc><C-W>k
imap <C-L> <Esc><C-W>l
imap <C-H> <Esc><C-W>h

" esc remap
imap jj <Esc>

" learning remaps
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>
noremap <Home> <nop>
noremap <End> <nop>

" visual indent keeps block
vnoremap > >gv
vnoremap < <gv

" remap ';' to be ':'
nnoremap ; :
" Y yanks from cursor to end of line (like D)
map Y y$
