" Don't show preview in completions
set completeopt-=preview

let g:neocomplcache_enable_at_startup = 1 " auto start
let g:neocomplcache_temporary_dir = '$XDG_CACHE_HOME/vim/neocon'
" current text settings
let g:neocomplcache_enable_smart_case = 1 " if all lower case, will be insensitive
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_min_syntax_length = 3 " 3 chars before pops up
" selection settings
let g:neocomplcache_enable_auto_select = 0
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "<Tab>"
"inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() . "\<CR>" : "<CR>"
" delimiter settings
if !exists('g:neocomplcache_delimiter_patterns')
   let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns.vim = ['#']
