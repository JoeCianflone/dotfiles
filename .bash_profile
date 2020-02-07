# Bash Completion _____________________________________________________________
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git Prompt __________________________________________________________________
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(__git_ps1)\[\033[00m\] \n→ "

# Exports _____________________________________________________________________
export PATH="$PATH:~/.composer/vendor/bin"
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

alias ssh-joecianflone='ssh forge@159.203.187.243'
alias ssh-mycommunitysite='ssh forge@167.99.158.205'
alias ssh-ballot='ssh forge@165.22.6.252'

# Functions ___________________________________________________________________

function site() {
   sudo code /etc/hosts
   code ~/Homestead/Homestead.yaml
}

function save-homestead() {
   rm -Rf ~/_homestead-backup/
   mkdir ~/_homestead-backup/
   cp ~/Homestead/Homestead.yaml ~/_homestead-backup/Homestead.yaml
   echo "File copied to ~/_homestead-backup/Homestead.yaml"
}

function rebase() {
   folder=$1
   shift

   if [ -z "$folder" ]; then
      echo "Missing the path/folder you want us to create"
      return
   fi

   echo "copying..."
   git clone https://github.com/JoeCianflone/rebase.git $folder

   cd -P -- "$folder"
   rm -Rf .git

   local OPTIND # Must be local
   while getopts ":i:" opt; do
      case $opt in
         i)
            echo "install dependencies..."
            composer install
            yarn;;
         esac
   done

   echo "done and opening in VSCode..."
   code ./
}
