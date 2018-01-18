#!/bin/sh

# Install Homebrew.............................................................
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Oh My Zsh ............................................................
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install some homebrew things.................................................
brew install bash-completion

brew install icdiff
brew install git-flow
brew install composer

brew install rbenv
brew install ruby-build
brew install gpg
brew install redis

brew install wget
brew install bash
brew install node

#brew install mysql
#brew install mariadb

# Install PHP..................................................................
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# PHP 7.1 .....................................................................
brew install php72 php72-imagick php72-opcache php72-redis php72-yaml

# PHP 7.1 .....................................................................
# brew install php71 php71-imagick php71-opcache php71-redis php71-yaml

# PHP 7.0 .....................................................................
# brew install php70 php70-imagick php70-opcache php70-redis php70-yaml

# PHP 5.6 .....................................................................
# Don't install this unless you have a project you have no choice but to 
# use this on. Even then...think twice
# .............................................................................
# brew install php56 php56-imagick php56-opcache php56-redis php56-yaml

# Configure Ruby...............................................................
rbenv install 2.5.0-dev
rbenv global 2.5.0-dev

# Install some global NPM packages.............................................
npm install -g yarn gulp vue-cli webpack handlebars

# Install some global Composer packages........................................
composer global require squizlabs/php_codesniffer
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require laravel/valet

# Dev Folders Ready............................................................
mkdir ~/Sites
cd ~/Sites
mkdir CLIENTS PERSONAL OSS PROJECTS
# valet park

# Install Homestead............................................................
cd ~
git clone https://github.com/laravel/homestead.git ~/Homestead
cd ~/Homestead
git checkout v7.0.1
bash init.sh

# Copy some files over to the right place......................................
cp .bash_profile  ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .gemrc ~/.gemrc
cp -R .valet/Drivers ~/.valet/Drivers

# Install Sass.................................................................
gem install sass