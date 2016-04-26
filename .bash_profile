# Git Prompt ..................................................................
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# Show & Hide Files ...........................................................
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Simple Server Start .........................................................
function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/" && python -m SimpleHTTPServer "$port"
}

# Bash Completion .............................................................
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Exports .....................................................................
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:/usr/local/opt"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:vendor/bin"
export PATH="$PATH:$(brew --prefix coreutils)/libexec/gnubin"
export PATH="$PATH:$(brew --prefix homebrew/php/php70)/bin"
#export PATH="$PATH:$(brew --prefix homebrew/php/php56)/bin"
#export PATH="$PATH:$(brew --prefix homebrew/php/php54)/bin"

export EDITOR='subl -w'

# Aliases .....................................................................
alias killem="killall Finder"
alias hulksmash='rm -Rf'
alias reload="source ~/.bash_profile"
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'
alias f='fzf'
alias getKey="pbcopy < ~/.ssh/id_rsa.pub"

alias up='sudo apachectl start'
alias down='sudo apachectl stop'
alias restart='sudo apachectl -k restart'

alias artisan='php artisan'
alias cept='vendor/bin/codecept'
alias phpspec='vendor/bin/phpspec'
alias phpunit='vendor/bin/phpunit'

alias mysqlstart='mysql.server start'
alias mysqlrestart='mysql.server restart'
alias mysqlstop='mysql.server stop'

alias co='git checkout'
alias rbm='git rebase -i master'
alias rbd='git rebase -i develop'
alias rb='git rebase -i'
alias gac='git add --all && git commit -am'
alias gpm='git push origin master'
alias gpd='git push origin develop'
alias push='git push origin'
alias pull='git pull origin'
alias idiot='git reset --hard'
alias gs='git status'
alias gb='git checkout -b'
alias merge='git merge'
alias gffs='git flow feature start'
alias gfff='git flow feature finish'

alias homestead='function __homestead() { (cd ~/Sites/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

# http://php-osx.liip.ch/
alias php55='curl -s http://php-osx.liip.ch/install.sh | bash -s 5.5'
alias php56='curl -s http://php-osx.liip.ch/install.sh | bash -s 5.6'
alias php70='curl -s http://php-osx.liip.ch/install.sh | bash -s 7.0'

# Needed for RBENV ............................................................
eval "$(rbenv init -)"
