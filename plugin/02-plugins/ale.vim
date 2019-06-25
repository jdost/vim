let g:ale_fixers = {
   \  '*': ['remove_trailing_lines', 'trim_whitespace'],
   \}

let g:ale_fix_on_save = 1

"let g:ale_completion_enabled = 1
"set omnifunc=ale#completion#OmniFunc

" Use a quickfix rather than loclist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

"keybindings
silent! if has_key(g:plugs, 'ale')
   nmap <silent> <C-k> <Plug>(ale_previous_wrap)
   nmap <silent> <C-j> <Plug>(ale_next_wrap)
endif
