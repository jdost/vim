"" Use vim settings (skip vi settings)
set nocompatible
" change default locations {{{
set directory=$XDG_CACHE_HOME/vim,~,/tmp
set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
set undodir=$XDG_CACHE_HOME/vim,.,/tmp
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
" }}}
" if 256 colors? set t_Co {{{
if $TERM =~ "-256color"
   set t_Co=256
endif " }}}
" pathogen plugin, sets up bundles
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on
" clear autocmds, handles on reloading this {{{
if has ("autocmd")
   autocmd!
endif " }}}
" apply vimrc changes without restarting {{{
if has("autocmd")
   augroup myvimrchooks
      au!
      au BufWritePost vimrc,vimrc so $MYVIMRC
   augroup END
endif " }}}
set autoread
set hidden

set noerrorbells
set undofile

" vim: ft=vim:foldmethod=marker
