setlocal shiftwidth=2
setlocal tabstop=2
" disable the auto syntastic checking
let g:syntastic_mode_map = { 'mode': 'passive',
   \  'active_filetypes': [],
   \  'passive_filetypes': ['haskell'] }
