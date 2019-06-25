if executable('gopls')
   " go get -u golang.org/x/tools/cmd/gopls
   au User lsp_setup call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
      \ 'whitelist': ['go'],
      \ })
   autocmd BufWritePre *.go LspDocumentFormatSync
elseif executable('go-langserver')
   " go get -u github.com/sourcegraph/go-langserver
   au User lsp_setup call lsp#register_server({
      \ 'name': 'go-langserver',
      \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
      \ 'whitelist': ['go'],
      \ })
   autocmd BufWritePre *.go LspDocumentFormatSync
elseif executable('bingo')
   " go get -u github.com/saibing/bingo
   au User lsp_setup call lsp#register_server({
      \ 'name': 'bingo',
      \ 'cmd': {server_info->['bingo', '-mode', 'stdio']},
      \ 'whitelist': ['go'],
      \ })
endif
