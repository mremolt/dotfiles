set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-cucumber'
Bundle "tpope/vim-markdown"

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'

Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/matchit.zip'
Bundle "vim-scripts/Rename2"

Bundle 'wincent/Command-T'
Bundle 'ervandew/supertab'
Bundle "Lokaltog/vim-easymotion"
Bundle 'mileszs/ack.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle "cakebaker/scss-syntax.vim.git"
Bundle 'ap/vim-css-color'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

Bundle 'skwp/vim-rspec'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'Raimondi/delimitMate'
Bundle "majutsushi/tagbar"
Bundle "mattn/zencoding-vim"
Bundle "tomtom/tcomment_vim"
Bundle "sjl/gundo.vim"
Bundle "vim-scripts/Gist.vim"
Bundle "vim-scripts/L9"
Bundle "Lokaltog/vim-powerline"

Bundle 'kchmck/vim-coffee-script'
Bundle "claco/jasmine.vim"
Bundle 'pangloss/vim-javascript'
Bundle 'hallettj/jslint.vim'
Bundle "jQuery"


filetype plugin indent on
