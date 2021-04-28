# Exports _____________________________________________________________________
export PATH="/usr/local/opt/ncurses/bin:$PATH" >> ~/.zshrc
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:/usr/local/opt"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:vendor/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR='code -w'

export REPOSITORY_HOME="$HOME/.repositories"
export DOTFILES_DIR="$REPOSITORY_HOME/dotfiles"

# Aliases _____________________________________________________________________
alias killem="killall Finder" 
alias videoKill="killall VDCAssistant"
alias reload="exec $SHELL -l"
alias pubkey="pbcopy < $HOME/.ssh/id_rsa.pub"

# Show and hide hidden files in Finder
alias showfiles="defaults write com.apple.Finder AppleShowAllFiles true && killall Finder"
alias hidefiles="defaults write com.apple.Finder AppleShowAllFiles false && killall Finder"

# Show and Hide desktop icons for recording
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

alias repos="cd $REPOSITORY_HOME"
alias dotfiles="cd $DOTFILES_DIR" 
alias community="~/.repositories/Sites/SHYFT/community"

alias notes="cd $REPOSITORY_HOME/notes && atom ./"
alias dots="cd $DOTFILES_DIR && code ./"

alias ..="cd .."

# This is probably not necessary, but I'd rather be safe than sorry
# This file is ignored and does not go to github
. "$DOTFILES_DIR/dots/ssh"

# Simple Function  ____________________________________________________________
function pdword() {
   pandoc -t docx  $1.md -o $1.docx
}

function book() {
  pandoc $1.md --standalone -o $2.odt
  open $2.odt
}
