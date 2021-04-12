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

function editorexport() {
    # Copy all the stuff for VSCode...
    cp ~/.vscode/settings.json "$DOTFILES_DIR/.vscode/"

    echo '#!/bin/sh' > "$DOTFILES_DIR.vscode/extensions.sh"
    code --list-extensions | xargs -L 1 echo code --install-extension >> "$DOTFILES_DIR.vscode/extensions.sh"

    # Copy all the stuff for Atom...
    apm list --installed --bare > "$DOTFILES_DIR.atom/package.txt"
    cp ~/.atom/config.cson ~/.repositories/.atom/config.cson
    cp ~/.atom/keymap.cson ~/.repositories/.atom/keymap.cson
}

function editorimport() {
    # Install Settings and Get VSCode working...
    cp "$DOTFILES_DIR/settings.json" ~/.vscode/settings.json
    . "$DOTFILES_DIR/extensions.sh"

    # Install packages and get Atom working...
    apm install --packages-file "$DOTFILES_DIR.atom/package.txt"
    cp ~/.repositories/.atom/config.cson ~/.atom/config.cson
    cp ~/.repositories/.atom/keymap.cson ~/.atom/keymap.cson
}

