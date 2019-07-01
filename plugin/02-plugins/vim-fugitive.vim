if has_key(g:plugs, 'vim-fugitive')
   if has_key(g:plugs, 'quickmenu.vim')
      call g:quickmenu#current(2)
      call g:quickmenu#append('Blame', 'Gblame', 'git blame', '', 0, '')
      call g:quickmenu#append('Logs', 'Glog', 'git log', '', 0, '')
   endif
endif
