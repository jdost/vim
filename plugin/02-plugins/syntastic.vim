" mark syntax errors with :signs
let g:syntastic_enable_signs=1
" automatically jump to the error when saving the file
let g:syntastic_auto_jump=1
" show error list automatically
let g:syntastic_auto_loc_list=1
" don't show warnings
let g:syntastic_quiet_warnings=0
" passive by default
let g:syntastic_mode_map={ 'mode': 'passive',
   \ 'active_filetypes': ['python'],
   \ 'passive_filetypes': ['haskell'] }
" keybinding to perform the check
nmap <leader>ss :SyntasticCheck<cr>:ShowErrors<cr>
nmap <leader>st :SyntasticToggleMode<cr>
nmap <Space>s :SyntasticCheck<cr>:ShowErrors<cr>
