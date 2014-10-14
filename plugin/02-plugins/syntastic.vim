" mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
" automatically jump to the error when saving the file
let g:syntastic_auto_jump=1
" show error list automatically
let g:syntastic_auto_loc_list=1
" don't show warnings
let g:syntastic_quiet_messages={'level': 'warnings'}
" passive by default
let g:syntastic_mode_map={ 'mode': 'passive',
   \ 'active_filetypes': ['python'],
   \ 'passive_filetypes': ['haskell'] }
" keybinding to perform the check
nmap <leader>ss :SyntasticCheck<cr>:Errors<cr>
nmap <leader>st :SyntasticToggleMode<cr>
nmap <Space>s :SyntasticCheck<cr>:Errors<cr>
