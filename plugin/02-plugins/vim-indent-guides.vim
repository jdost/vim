" auto calculate the guide colors
let g:indent_guides_auto_colors=1
" amount of the indentation that gets colored (0 for all)
let g:indent_guides_guide_size=0
" indentation level to begin coloring
let g:indent_guides_start_level=1
" enable plugin by default
let g:indent_guides_enable_on_vim_startup=1

" keymapping
nnoremap <leader>ig <Plug>IndentGuidesToggle
