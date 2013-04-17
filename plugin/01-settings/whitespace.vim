function TrimWhiteSpace()
   " Save position and searches
   let _s=@/
   let l = line(".")
   let c = col(".")
   " Perform the trim
   %s/\s*$//
   " Restore saves
   let @/ = _s
   call cursor(l, c)
endfunction

autocmd BufWritePre * :call TrimWhiteSpace()
nnoremap <leader>W :call TrimWhiteSpace()<cr>
