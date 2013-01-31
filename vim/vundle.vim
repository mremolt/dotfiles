set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'


" base plugins
Bundle "vim-scripts/L9"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"


" editor features
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/matchit.zip'
Bundle 'scrooloose/nerdtree'
Bundle "majutsushi/tagbar"
Bundle "Lokaltog/vim-powerline"
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim'
Bundle "ReekenX/vim-rename2"
Bundle "tpope/vim-eunuch"


" coding enhancements
Bundle "tomtom/tcomment_vim"
Bundle "mattn/zencoding-vim"
Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-textobj-user'
Bundle "garbas/vim-snipmate"
Bundle "honza/snipmate-snippets"
Bundle 'AndrewRadev/switch.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'


" languages
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'ap/vim-css-color'
Bundle "cakebaker/scss-syntax.vim"
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'nono/vim-handlebars'


" frameworks & libs
Bundle 'tpope/vim-rails'
Bundle "jQuery"


" testing & code quality
Bundle 'skwp/vim-rspec'
Bundle 'walm/jshint.vim'
Bundle 'claco/jasmine.vim'
Bundle 'skalnik/vim-vroom'


filetype plugin indent on
