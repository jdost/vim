" leader
let mapleader = ','
" backspace behavior
set backspace=indent,eol,start

" tab controls
map <F4> :tabnext<cr>
map <F3> :tabprevious<cr>
imap <F4> <Esc>:tabnext<cr>
imap <F3> <Esc>:tabprevious<cr>

" split controls are now in the vim-tmux plugin

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

" :w!! writes the current buffer as root
cmap w!! w !sudo tee > /dev/null %
