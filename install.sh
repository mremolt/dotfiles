#!/bin/bash
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh --no-check-certificate -O - | sh

[ -d $HOME/.config/terminator ] || mkdir -p $HOME/.config/terminator
ln -sf $(pwd)/config/terminator/config ~/.config/terminator/config
ln -sf $(pwd)/gvimrc ~/.gvimrc
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/zshrc ~/.zshrc

ln -sf $(pwd)/vim ~/.vim
ln -sf $(pwd)/zsh ~/.zsh
ln -sf $(pwd)/bin ~/bin

cd vim/bundle/Command-T
rvm use system
rake make
