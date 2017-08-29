#!/bin/sh

# Install Homebrew.............................................................
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Oh My Zsh ............................................................
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install some homebrew things.................................................
brew install bash-completion
brew install git-flow
brew install composer
#brew install mongodb
brew install rbenv
brew install ruby-build
brew install gpg
brew install redis
#brew install mysql
#brew install mariadb
brew install wget
brew install bash
brew install node

# Install PHP..................................................................
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# PHP 7.1 .....................................................................
brew install php71
brew install php71-imagick
brew install php71-opcache
brew install php71-redis
brew install php71-mongodb
brew install php71-yaml

# PHP 7.0 .....................................................................
# brew install php70
# brew install php70-imagick
# brew install php70-opcache
# brew install php70-redis
# brew install php70-mongodb
# brew install php70-yaml


# PHP 5.6 .....................................................................
# brew install php56
# brew install php56-imagick
# brew install php56-opcache
# brew install php56-redis
# brew install php56-mongodb
# brew install php56-yaml

# Configure Ruby...............................................................
rbenv install 2.3.3
rbenv global 2.3.3

# Install some global NPM packages.............................................
npm install -g yarn
yarn global add handlebars bower gulp

# Install some global Composer packages........................................
composer global require joecianflone/heisenberg-toolkit-installer
composer global require squizlabs/php_codesniffer
composer global require laravel/lumen-installer
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require phpspec/phpspec
composer global require laravel/valet

# Valet Parking................................................................
mkdir ~/Sites
cd ~/Sites
valet park

# Copy some files over to the right place......................................
cp .bash_profile  ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .gemrc ~/.gemrc
cp -R .valet/Drivers ~/.valet/Drivers


# Install some apps............................................................
# You don't want to install all of these, they'll take forever.
# Just use this as a listing of things you should install
# when you get a chance........................................................

# brew cask install browserstacklocal
# brew cask install google-chrome
# brew cask install screenhero
# brew cask install sourcetree
# brew cask install sequel-pro
# brew cask install imagealpha
# brew cask install rescuetime
# brew cask install virtualbox
# brew cask install imageoptim
# brew cask install spectacle
# brew cask install chromium
# brew cask install skyfonts
# brew cask install dropbox
# brew cask install firefox
# brew cask install vagrant
# brew cask install alfred
# brew cask install pandoc
# brew cask install sketch
# brew cask install slack
# brew cask install gyazo
# brew cask install flux
