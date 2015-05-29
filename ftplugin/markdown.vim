setlocal wrap
setlocal shiftwidth=4
setlocal tabstop=4
setlocal nolist
setlocal linebreak

let g:TrimOnSave = 0
"let g:neocomplcache_enable_at_startup = 0
if !exists('g:neocomplcache_disabled_sources_list')
   let g:neocomplcache_disabled_sources_list = {}
endif
let g:neocomplcache_disabled_sources_list.markdown =
   \ ['buffer_complete', 'member_complete']

" spell check
setlocal spell
set dictionary=/usr/share/dict/words
set spellfile=~/.local/custom-dictionary.utf-8.add

" codeblocks
let g:markdown_fenced_languages = ['python', 'javascript', 'js=javascript',
         \ 'json=javascript', 'ruby', 'css', 'less', 'sass', 'xml', 'html',
         \ 'hs=haskell', 'haskell', 'zsh', 'sh', 'bash=sh', 'vim' ]
