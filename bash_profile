#completition
# Homebrew,
#https://github.com/mxcl/homebrew/raw/master/Library/Contributions/brew_bash_completion.sh
# Git,
#https://github.com/git/git/raw/master/contrib/completion/git-completion.bash


if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi






# Only use git prompt if git bash completion is installed.
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    export GIT_PS1_SHOWDIRTYSTATE="true"
    export GIT_PS1_SHOWSTASHSTATE="true"
    export GIT_PS1_SHOWUNTRACKEDFILES="true"
    export GIT_PS1_SHOWUPSTREAM="verbose"

    PS1='$(__git_ps1 "\[\033[1;33m\]%s\[\033[0m\]
")\[\033[1;36m\]\w\[\033[0m\]\[\033[1m\]: \[\033[0m\]'
else
    PS1='\e[1;36m\]\W\e[0m\] \e[1m\]:\e[0m\]'
fi

export PATH=$HOME/bin:$PATH
export PATH=$PATH:~/warez/scala-2.9.1.final/bin


[[ -s "/Users/duana/.rvm/scripts/rvm" ]] && source "/Users/duana/.rvm/scripts/rvm"

rvm use 1.9.2

export NODE_PATH="/usr/local/lib/node"

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
