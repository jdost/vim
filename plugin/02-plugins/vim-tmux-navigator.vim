" tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-J> :TmuxNavigateDown<cr>
nnoremap <silent> <C-K> :TmuxNavigateUp<cr>
nnoremap <silent> <C-H> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-L> :TmuxNavigateRight<cr>
inoremap <silent> <C-J> <Esc>:TmuxNavigateDown<cr>
inoremap <silent> <C-K> <Esc>:TmuxNavigateUp<cr>
inoremap <silent> <C-H> <Esc>:TmuxNavigateLeft<cr>
inoremap <silent> <C-L> <Esc>:TmuxNavigateRight<cr>
