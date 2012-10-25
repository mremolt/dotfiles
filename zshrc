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
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

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

paskill() {
  kill $(netstat -tlpn 2>/dev/null | grep '0.0.0.0:3000' | awk '{print $7}' | sed 's/[^0-9]//g')
}

export CFLAGS="-march=native -O2"
export FIXTURES_PATH="spec/fixtures"
export EDITOR="/usr/bin/vim"

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export JAVA_OPTS="-J-client"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Fix for CTRL-Arrow
bindkey "5C" forward-word
bindkey "5D" backward-word

# shortcut for gvim
alias gv="gvim -geom 220x60"

# projects

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

alias tmux="TERM=screen-256color-bce tmux"

alias es="cd ~/workspace/gfk_emoscan_admin/source/dcs_emoscan && rvm use ruby-1.9.3-p125-perf && clear"
alias ga="cd ~/workspace/gfk_answers/source && rvm use ruby-1.9.3-p125-perf && clear"
alias stunden="(cd ~/workspace/dcs_stunden && svn up && svn ci -m 'Stunden Marc')"
alias skype="LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so /usr/bin/skype"
