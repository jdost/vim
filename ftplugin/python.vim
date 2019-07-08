setlocal tabstop=4
setlocal shiftwidth=4

setlocal wrap
setlocal textwidth=79
setlocal colorcolumn=80

setlocal foldmethod=indent

if executable('pyls') and has_key(g:plugs, 'vim-lsp')
   " pip install python-language-server
   au User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python'],
      \ })
endif

if has_key(g:plugs, 'ale')
   " Ale specific settings for python
   let b:ale_linters = ['mypy', 'pylint']
   let b:ale_fixers = ['black', 'isort']
endif
