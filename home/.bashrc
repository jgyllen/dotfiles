# Basics
export EDITOR='subl'
export GREP_OPTIONS='--color=always'
export PATH=/usr/local/bin:$PATH:$HOME/bin

# Homebrew
export PATH="/usr/local/sbin:$PATH"
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

# Git
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '
export GIT_PS1_SHOWDIRTYSTATE='yes'
export GIT_PS1_SHOWSTASHSTATE='yes'
export GIT_PS1_SHOWUNTRACKEDFILES='yes'

# hub
eval "$(hub alias -s)"
source `brew --prefix`/etc/bash_completion.d/hub.bash_completion.sh

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Load private stuff
if [ -e ~/.bashrc_private ]
  then source ~/.bashrc_private
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# lunchy
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

# Rails project shims
export PATH="./bin:$PATH"
