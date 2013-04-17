let g:neosnippet#snippets_directory = "$XDG_CONFIG_HOME/vim/snippets"
let g:neosnippet#disable_runtime_snippets = {
   \ '_' : 1,
   \ }

inoremap <expr><CR> pumvisible() ?
   \ neosnippet#expandable() ?
      \ neosnippet#expand_impl()
      \ : neocomplcache#close_popup() . "\<CR>"
   \ : "<CR>"
inoremap <expr><Tab> neosnippet#jumpable() ?
   \ neosnippet#jump_impl()
   \ : pumvisible() ? "\<C-n>" : "<Tab>"
