" leader
let mapleader = ','
" backspace behavior
set backspace=indent,eol,start
" fix recording typo
map q: :q

" tab controls
map <F4> :tabnext<cr>
map <F3> :tabprevious<cr>
imap <F4> <Esc>:tabnext<cr>
imap <F3> <Esc>:tabprevious<cr>

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

" paste/yank before cursor
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" :w!! writes the current buffer as root
cmap w!! w !sudo tee > /dev/null %

" easier ^ & $
nnoremap L $
nnoremap H ^

" toggle paste with F6
nnoremap <F6> :set paste!<cr>
inoremap <F6> <Esc>:set paste!<cr>i
