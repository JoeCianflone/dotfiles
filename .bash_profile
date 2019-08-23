# Bash Completion .............................................................
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git Propt ...................................................................
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(__git_ps1)\[\033[00m\] \n→ "

# Exports .....................................................................
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:/usr/local/opt"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:vendor/bin"
export EDITOR='code -w'

export PATH="$HOME/.cargo/bin:$PATH"

# Aliases .....................................................................
alias killem="killall Finder"
alias videoKill="killall VDCAssistant"
alias reload="source ~/.bash_profile"
alias pubkey="pbcopy < ~/.ssh/id_rsa.pub"

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

alias gac='git add --all && git commit -am'
alias gs='git status'
alias nah='git reset --hard'

alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias new-site='sudo code /etc/hosts ~/Homestead/Homestead.yaml'
