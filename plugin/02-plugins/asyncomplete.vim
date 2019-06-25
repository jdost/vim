silent! if has_key(g:plugs, 'asyncomplete.vim')
   inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
   inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

   autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
endif

" asyncomplete-buffer
silent! if has_key(g:plugs, 'asyncomplete-buffer.vim')
   call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
      \ 'name': 'buffer',
      \ 'whitelist': ['*'],
      \ 'blacklist': ['go'],
      \ 'completor': function('asyncomplete#sources#buffer#completor'),
      \ 'config': {
      \    'max_buffer_size': 5000000,
      \  },
      \ }))
endif

" tmux-complete
silent! if has_key(g:plugs, 'tmux-complete.vim')
   let g:tmuxcomplete#asyncomplete_source_options = {
               \ 'name':      'tmuxcomplete',
               \ 'whitelist': ['*'],
               \ 'config': {
               \     'splitmode':      'words',
               \     'filter_prefix':   1,
               \     'show_incomplete': 1,
               \     'sort_candidates': 0,
               \     'scrollback':      0,
               \     'truncate':        0
               \     }
               \ }
endif
