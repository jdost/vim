if empty(glob('$XDG_CONFIG_HOME/vim/autoload/plug.vim'))
   silent !curl -fLo $XDG_CONFIG_HOME/vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$XDG_CONFIG_HOME/vim/bundle')

" Navigation/Movement
Plug 'rhysd/clever-f.vim'
if !empty(glob('/usr/bin/fzf.disabled'))  " Disabled until it feels closer to ctrlp
   " Use fzf if it is installed
   Plug '/usr/share/vim/vimfiles'
   Plug 'junegunn/fzf.vim'
else
   Plug 'ctrlpvim/ctrlp.vim'
endif
"Plug 'mileszs/ack.vim'

" Editting
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'w0rp/ale'
"Plug 'scrooloose/syntastic'
"Plug 'Shougo/neocomplcache'
"Plug 'Shougo/neosnippet'
"Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim', empty(glob('./.editorconfig')) ? { 'on': [] } : {}

" General
"Plug 'mtth/scratch.vim'
Plug 'airblade/vim-rooter'  " This updates the CWD to be the top level of a git repo
Plug 'tpope/vim-vinegar'  " Updates and cleans up the netrw capabilities
Plug 'vim-scripts/IndexedSearch'
"Plug 'tpope/vim-surround'
"Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'roxma/vim-paste-easy'  " Smart pasting detection
"Plug 'terryma/vim-expand-region'
"Plug 'wellle/targets.vim'
"Plug 'thaerkh/vim-workspace'

" VCS
Plug 'tpope/vim-git'
Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
Plug 'itchyny/lightline.vim'

" Appearance/UI
Plug 'sjl/badwolf'
"Plug 'junegunn/seoul256.vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'bagrat/vim-buffet'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux', exists('$TMUX') ? {} : { 'on': [] }
"Plug 'tmux-plugins/vim-tmux-focus-events', exists('$TMUX') ? {} : { 'on': [] }
Plug 'wellle/tmux-complete.vim', exists('$TMUX') ? {} : { 'on': [] }

" Language Specifics
Plug 'sheerun/vim-polyglot'

Plug 'ehamberg/vim-cute-python', { 'for': 'python' }
"Plug 'hdima/python-syntax', { 'for': 'python' }

"Plug 'fatih/vim-go', { 'for': 'go' }

"Plug 'rust-lang/rust.vim', { 'for': 'rust' }

"Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }

Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
"Plug 'reedes/vim-pencil', { 'for': 'markdown' }

"Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
"Plug 'groenewege/vim-less', { 'for': 'less' }
"Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
"Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

"Plug 'vim-scripts/nginx.vim', { 'for': 'nginx' }
"Plug 'smancill/conky-syntax.vim', { 'for': 'conky' }
"Plug 'puppetlabs/puppet-syntax-vim', { 'for': 'puppet' }
"Plug 'helino/vim-json', { 'for': 'json' }
"Plug 'elzr/vim-json', { 'for': 'json' }
"Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }
"Plug 'ekalinin/Dockerfile.vim', { 'for': ['Dockerfile', 'docker-compose'] }

call plug#end()
