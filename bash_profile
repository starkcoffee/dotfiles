# ALIASES
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias weave="pr -m -t"
alias be="bundle exec"
alias grepr="grep -r"
alias gpr="git pull --rebase"
alias gd="git difftool -y --tool=vimdiff"
alias screen_with_name="screen -S"
alias screen_join="screen -r"


ppjson () {
  ruby -e "require 'json'; puts JSON.pretty_generate(JSON.parse(STDIN.read))"
}
uri_decode () {
  ruby -e "require 'uri'; puts URI.decode '$1'"
}
uri_encode () {
  ruby -e "require 'uri'; puts URI.encode '$1'"
}

function mkscript(){
  fname=$1
  touch $fname
  chmod +x $fname
  vim $fname
}

function hello () {
  echo 'well hello there!'
}

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

    PS1='$(__git_ps1 "\[\033[1;33m\]%s\[\033[0m\] ")\[\033[1;36m\]\w\[\033[0m\]\[\033[1m\]: \[\033[0m\]'
else
    PS1='\e[1;36m\]\W\e[0m\] \e[1m\]: \e[0m\]'
fi

export EDITOR=vim

# PATH MUNGING

PATH=$HOME/bin:$HOME/bin/handy:/usr/local/sbin:/usr/local/bin:$PATH
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH

PATH=$PATH:~/handy
export PATH

export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

#make ctrl-s accessible, don't let the terminal catch it
stty ixoff -ixon

# brew installs/links the android sdk here
ANDROID_HOME=/usr/local/opt/android-sdk/
export ANDROID_HOME=$ANDROID_HOME
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_SDK_HOME=$ANDROID_HOME

# I downloaded and installed ANDROID NDK from http://developer.android.com/ndk/downloads/index.html
export ANDROID_NDK=/usr/local/opt/android-ndk-r10e/

# this is for v2 development
export NODE_ENV=development
export NODE_PATH="/usr/local/lib/node"

export NVM_DIR="/Users/duana/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# init docker
eval "$(docker-machine env default)"
