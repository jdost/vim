if empty(glob('$XDG_CONFIG_HOME/vim/autoload/plug.vim'))
   silent !curl -fLo $XDG_CONFIG_HOME/vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$XDG_CONFIG_HOME/vim/bundle')

" Navigation/Movement {{{
Plug 'rhysd/clever-f.vim'
if !empty(glob('/usr/bin/fzf.disabled'))  " Disabled until it feels closer to ctrlp
   " Use fzf if it is installed
   Plug '/usr/share/vim/vimfiles'
   Plug 'junegunn/fzf.vim'
else
   Plug 'ctrlpvim/ctrlp.vim'
endif
"Plug 'mileszs/ack.vim'
" }}}

" General {{{
"Plug 'mtth/scratch.vim'
Plug 'airblade/vim-rooter'  " This updates the CWD to be the top level of a git repo
Plug 'tpope/vim-vinegar'  " Updates and cleans up the netrw capabilities
Plug 'google/vim-searchindex'
"Plug 'tpope/vim-surround'
"Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'roxma/vim-paste-easy'  " Smart pasting detection
"Plug 'terryma/vim-expand-region'
Plug 'wellle/targets.vim'  " Additional text objects
"Plug 'thaerkh/vim-workspace'
Plug 'tweekmonster/startuptime.vim', { 'on': 'StartupTime' }
" }}}

" Editting {{{
"Plug 'Shougo/neco-syntax'
" asyncomplete+friends {{{
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
"Plug 'prabirshrestha/asyncomplete-necosyntax.vim'
" }}}
" coc {{{
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'tjdevries/coc-zsh'
" }}}
" ncm2 {{{
"Plug 'roxma/nvim-yarp' | Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-syntax'
"Plug 'ncm2/ncm2-vim-lsp'
" }}}

"Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
"Plug 'scrooloose/syntastic'
"Plug 'Shougo/neosnippet'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim', empty(glob('./.editorconfig')) ? { 'on': [] } : {}
Plug 'machakann/vim-highlightedyank'  " highlights yanked blocks
" }}}

" VCS {{{
Plug 'tpope/vim-git'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'rhysd/committia.vim'
Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }
" }}}

" Appearance/UI {{{
Plug 'sjl/badwolf'
"Plug 'junegunn/seoul256.vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'bagrat/vim-buffet'
Plug 'CharlesGueunet/quickmenu.vim'
Plug 'itchyny/lightline.vim'
" }}}

" Tmux {{{
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux', exists('$TMUX') ? {} : { 'on': [] }
Plug 'tmux-plugins/vim-tmux-focus-events', exists('$TMUX') ? {} : { 'on': [] }
Plug 'wellle/tmux-complete.vim', exists('$TMUX') ? {} : { 'on': [] }
" }}}

" Language Specifics {{{
Plug 'sheerun/vim-polyglot'
" --- Python
Plug 'ehamberg/vim-cute-python', { 'for': 'python' }
Plug 'hdima/python-syntax', { 'for': 'python' }
" --- GoLang
Plug 'fatih/vim-go', { 'for': 'go' }
" --- Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" --- Elxir
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
" --- Markdown
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'reedes/vim-pencil', { 'for': 'markdown' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
" --- Web Frontend stuff
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" --- Configs and such
Plug 'vim-scripts/nginx.vim', { 'for': 'nginx' }
Plug 'smancill/conky-syntax.vim', { 'for': 'conky' }
Plug 'puppetlabs/puppet-syntax-vim', { 'for': 'puppet' }
Plug 'helino/vim-json', { 'for': 'json' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }
Plug 'ekalinin/Dockerfile.vim', { 'for': ['Dockerfile', 'docker-compose'] }
" }}}
call plug#end()
