# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler cap command-not-found deb debian dircycle gem git git-extras github heroku history-substring-search rails3 ruby svn thor vundle)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh /completions.zsh

# special zsh features
setopt extended_glob
autoload -U zmv

# Fix for CTRL-Arrow
bindkey "5C" forward-word
bindkey "5D" backward-word

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward]]


export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:$HOME/bin/Sencha/Cmd/3.0.0.250
export PATH=$PATH:/opt/WebStorm/bin

export LD_PRELOAD='/usr/lib/libtcmalloc_minimal_debug.so.4'
export CFLAGS="-march=native -O3 -pipe -fomit-frame-pointer"
export FIXTURES_PATH="spec/fixtures"
export EDITOR="/usr/bin/vim"

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_FREE_MIN=500000
export RUBY_HEAP_MIN_SLOTS=40000

export COFFEELINT_CONFIG=$HOME/.coffeelint.json
export JRUBY_OPTS="-J-XX:ReservedCodeCacheSize=100m -J-Xmn512m -J-Xms2048m -J-Xmx2048m -J-server -Xcext.enabled=true"

# rbenv
eval "$(rbenv init -)"

alias gv="gvim -geom 220x60"
alias tmux="TERM=screen-256color-bce tmux"
alias tmux="TERM=xterm-256color tmux -2"
alias rvm="rbenv"

unalias ag

# svn add all ;-)
function saa() {
  svn add $(svn status | egrep '^\?' | awk '{print $2}')
}

# svn delete all uncommited files
function sdau() {
  rm -rf $(svn status | egrep '^\?' | awk '{print $2}')
}

# svn revert all
function sra() {
  svn revert -R *
}

# svn revert all and remove all uncommited files
function srda() {
  sdau && sra
}

function kp() {
  kill ${$(netstat -tlpn 2> /dev/null | grep ":3000" | awk '{ print $7 }')%/}
}

function paskill() {
  kill $(netstat -tlpn 2>/dev/null | grep '0.0.0.0:3000' | awk '{print $7}' | sed 's/[^0-9]//g')
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
