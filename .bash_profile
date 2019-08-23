# Git Prompt ..................................................................
# if [ -f ~/.bash_prompt ]; then
#   source ~/.bash_prompt
# fi

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
export PATH="$PATH:$(brew --prefix homebrew/php/php72)/bin"
export EDITOR='vscode -w'

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

alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias homestead-edit='code ~/Homestead/.homestead'
alias host-edit='sudo subl /etc/hosts';

alias cp-hosts='cp /etc/hosts ~/Sites/PERSONAL/dotfiles'
alias cp-homestead='cp ~/Homestead/homestead.yaml ~/Sites/PERSONAL/dotfiles'
