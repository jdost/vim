setlocal tabstop=2
setlocal shiftwidth=2

if !exists('g:neocomplcache_disabled_sources_list')
   let g:neocomplcache_disabled_sources_list = {}
endif
" Disable sources for vimwiki
let g:neocomplcache_disabled_sources_list.vimwiki =
   \ ['dictionary_complete', 'member_complete']

set spell
