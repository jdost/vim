setlocal wrap
setlocal shiftwidth=4
setlocal tabstop=4

autocmd! BufWritePre *
"let g:neocomplcache_enable_at_startup = 0
if !exists('g:neocomplcache_disabled_sources_list')
   let g:neocomplcache_disabled_sources_list = {}
endif
let g:neocomplcache_disabled_sources_list.markdown =
   \ ['buffer_complete', 'member_complete']

" spell check
set spell
