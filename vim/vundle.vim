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
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-cucumber'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'

Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/matchit.zip'
Bundle 'rson/vim-conque'

Bundle 'wincent/Command-T'
Bundle 'mileszs/ack.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
Bundle 'hallettj/jslint.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'taq/vim-rspec'
Bundle 'msanders/snipmate.vim'
Bundle 'tsaleh/vim-align'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'Townk/vim-autoclose'

Bundle 'repeat.vim'

filetype plugin indent on