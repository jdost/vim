" if 256 colors use a colorscheme
if &t_Co >= 256
   "colorscheme molokai
   colorscheme badwolf
   syntax on
endif

set cursorline

set encoding=utf-8
" Line numbering
set number
set numberwidth=5
" Special characters in a file
set list
set listchars=tab:>\ ,trail:-,eol:¬
set fillchars=vert:┃ "║

set ttyfast
set lazyredraw

set colorcolumn=85

set scrolloff=5
execute 'nnoremap H H' . &l:scrolloff . 'k'
execute 'vnoremap H H' . &l:scrolloff . 'k'
execute 'nnoremap L L' . &l:scrolloff . 'j'
execute 'vnoremap L L' . &l:scrolloff . 'j'
