# Exports _____________________________________________________________________
export PATH="/usr/local/opt/ncurses/bin:$PATH" >> ~/.zshrc
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:/usr/local/opt"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:vendor/bin"
export EDITOR='code -w'

export PATH="$HOME/.cargo/bin:$PATH"

# Aliases _____________________________________________________________________
alias killem="killall Finder" 
alias videoKill="killall VDCAssistant"
alias reload="exec $SHELL -l"
alias pubkey="pbcopy < $HOME/.ssh/id_rsa.pub"

alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

alias ga='git add .'
alias gac='git add . && git commit -am'
alias gc='git commit -am'
alias gpm='git push origin main'
alias gpp='git push origin primary'
alias gp='git push origin'
alias gs='git status'
alias nah='git reset --hard'

alias dumpextensions='code --list-extensions | xargs -L 1 echo code --install-extension'
