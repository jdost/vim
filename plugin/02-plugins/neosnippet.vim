let g:neosnippet#snippets_directory = "$XDG_CONFIG_HOME/vim/snippets"
let g:neosnippet#disable_runtime_snippets = {
   \ '_' : 1,
   \ }

imap <expr><CR> pumvisible() ?
   \ neosnippet#expandable() ?
      \ "\<Plug>(neosnippet_expand)"
      \ : neocomplcache#close_popup() . "\<CR>"
   \ : "<CR>"
imap <expr><Tab> neosnippet#jumpable() ?
   \ "\<Plug>(neosnippet_jump)"
   \ : pumvisible() ? "\<C-n>" : "<Tab>"
