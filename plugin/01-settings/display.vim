" if 256 colors use a colorscheme
if &t_Co >= 256
   "colorscheme molokai
   colorscheme badwolf
   syntax on

   hi Normal ctermbg=none
   hi Nontext ctermbg=none
endif

set synmaxcol=300

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

command! -nargs=? -complete=file V :call s:Vsplit( '<args>' )
command! -nargs=? -complete=file S :call s:Ssplit( '<args>' )

function! s:Vsplit(files)
   echom a:files
   if a:files == ""
      vsplit .
   else
      execut "vsplit " . a:files
   endif
endfunction

function! s:Ssplit(files)
   echom a:files
   if a:files == ""
      split .
   else
      execut "split " . a:files
   endif
endfunction
