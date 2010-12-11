# Basics
export EDITOR='mate -w'
export PATH=$PATH:$HOME/bin

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Homebrew
export PATH=$PATH:/usr/local/sbin
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

# Git
source /usr/local/etc/bash_completion.d/git-completion.bash
export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '
export GIT_PS1_SHOWDIRTYSTATE='yes'
export GIT_PS1_SHOWSTASHSTATE='yes'
export GIT_PS1_SHOWUNTRACKEDFILES='yes'

# Java
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
