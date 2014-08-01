let g:ctrlp_cmd = "CtrlPBuffer"
" Indexing improvements
let g:ctrlp_user_command = ['.git',
\  'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" Custom ignores
let g:ctrlp_custom_ignore = {
\     'dir': '\v[\/]\.(git|hg)$',
\     'file': '\v\.(pyc|o|hi)$'
\  }
" Caching
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_cache_dir = $XDG_CACHE_HOME.'/vim/ctrlp/'
let g:ctrlp_max_depth = 10
" Keymap
let g:ctrlp_prompt_mappings = {
\     'AcceptSelection("v")': ['<C-Enter>']
\  }
" MRU
let g:ctrlp_mruf_relative = 1
let g:ctrlp_mruf_max = 50
" Search Behavior
let g:ctrlp_lazy_update = 500 " ms
let g:ctrlp_working_path_mode = 'ra'
