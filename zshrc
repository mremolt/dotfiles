# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler cap command-not-found deb debian gem git github rails3 ruby thor vundle)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh /completions.zsh

# special zsh features
setopt extended_glob
autoload -U zmv

# Customize to your needs...
export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# svn add all ;-)
saa() {
  svn add $(svn status | egrep '^\?' | awk '{print $2}')
}

# svn delete all uncommited files
sdau() {
  rm -rf $(svn status | egrep '^\?' | awk '{print $2}')
}

# svn revert all
sra() {
  svn revert -R *
}

# svn revert all and remove all uncommited files
srda() {
  sdau && sra
}

kp() {
  kill ${$(netstat -tlpn 2> /dev/null | grep ":3000" | awk '{ print $7 }')%/}
}

export CFLAGS="-march=native -O2"
export FIXTURES_PATH="spec/fixtures"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Fix for CTRL-Arrow
bindkey "5C" forward-word
bindkey "5D" backward-word

# shortcut for gvim
alias gv="gvim -geom 220x60"

# projects
alias eed='cd ~/workspace/erich-erdinger && rvm use ruby-1.9.2 && clear'
alias mr='cd ~/workspace/marc-remolt && rvm use ruby-1.9.3 && clear'
alias rwi='cd ~/workspace/refinerycms-wordpress-import && rvm use ruby-1.9.3 && clear'
alias mo="cd ~/workspace/gfk_mobilitaetspanel/source/mobilitaet && rvm use ruby-1.9.3 && clear"
alias panel="cd ~/workspace/rog_panel/panel && rvm use ree && clear"
alias rog="cd ~/workspace/20111025_rails3_upgrade && rvm use 1.9.3 && clear"
alias gb="cd ~/workspace/guestbook_backbone && rvm use 1.9.3-p0-perf && clear"
