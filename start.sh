#!/bin/sh

echo -n "Enter your name: "
read name

echo -n "Enter your email address: "
read email

echo -n "Enter your user folder: "
read user

sed -i '' 's/_USER_/'$user'/g' .gitconfig
sed -i '' 's/_EMAIL_/'$email'/g' .gitconfig
sed -i '' 's/_NAME_/'$name'/g' .gitconfig

# Install Homebrew.............................................................
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install some homebrew things.................................................
brew install wget

brew install bash
brew install bash-completion
brew install ruby
brew install node

brew install icdiff
brew install git
brew install git-flow

brew install imagemagick
brew install jpeg
brew install libpng
brew install libtiff

brew install libsodium
brew install gpg

brew install composer
brew install redis

# Install PHP..................................................................
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/php

# PHP 7.2 .....................................................................
brew install php72 
brew install php72-imagick 
brew install php72-opcache 
brew install php72-redis 
brew install php72-yaml 
brew install php72-xdebug

# PHP 7.1 .....................................................................
# brew install php71 
# brew install php71-imagick 
# brew install php71-opcache 
# brew install php71-redis 
# brew install php71-yaml
# brew install php71-xdebug

# Install some global NPM packages.............................................
npm install -g yarn 
npm install -g gulp 
npm install -g vue-cli 
npm install -g webpack 
npm install -g handlebars
npm install -g typescript

# Install some global Composer packages........................................
composer global require squizlabs/php_codesniffer
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require laravel/valet

# Dev Folders Ready............................................................
mkdir ~/Sites
cd ~/Sites

mkdir CLIENTS 
mkdir PERSONAL 
mkdir OSS 
mkdir PROJECTS

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
cp .gitconfig ~/.gitconfig
cp .gitignore ~/.gitignore_global
cp -R .valet/Drivers ~/.valet/Drivers
cp -R homestead.yaml ~/Homestead/homestead.yaml

# Create your SSH ket .........................................................
echo -n "Generate an SSH key for $email? (y/n) "
read genssh

if [ "$genssh" = "y" ]
then
    ssh-keygen -t rsa -C "$email"
fi

# Install Sass.................................................................
gem install sass

# Install Code Plugins.........................................................

echo -n "Want to install your VSCode plugins? (y/n) "
read plugins

if [ "$plugins" = "y" ]
then
    bash vscode-plugins.sh  
fi

