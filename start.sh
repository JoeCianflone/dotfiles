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

# Install rust and rustup .....................................................
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup default nightly

# Install some homebrew things.................................................
brew install wget

brew install bash
brew install bash-completion
brew install ruby
brew install node

brew install icdiff
brew install git
brew install git-flow
brew install git-lfs
brew install yarn

brew install imagemagick
brew install jpeg
brew install libpng
brew install libtiff

brew install libsodium
brew install gpg

brew install composer
brew install redis

brew install erlang
brew install elixir

brew install sass/sass/sass

# Install PHP..................................................................
brew install php

pecl install xdebug
pecl install yaml
pecl install redis
pecl install imagick

# Install some global NPM packages.............................................
yarn global add vue-cli
yarn global add webpack
yarn global add typescript

# Install some global Composer packages........................................
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit

# Dev Folders Ready............................................................
mkdir ~/Sites
cd ~/Sites

mkdir CLIENTS
mkdir PROJECTS
mkdir OPEN-SOURCE
mkdir MCS

# Create your SSH ket .........................................................
echo -n "Generate an SSH key for $email? (y/n) "
read genssh

if [ "$genssh" = "y" ]
then
    ssh-keygen -t rsa -C "$email"
fi


# Install Homestead............................................................
cd ~
git clone https://github.com/laravel/homestead.git ~/Homestead
cd ~/Homestead
bash init.sh

# Install Github Repos.........................................................
cd ~/Sites
cd PERSONAL
git clone git@github.com:JoeCianflone/rebase.git

cd ../OPEN-SOURCE
git clone git@github.com:lysyi3m/macos-terminal-themes.git


# Copy some files over to the right place......................................
cp .bash_profile  ~/.bash_profile
cp .gemrc ~/.gemrc
cp .gitconfig ~/.gitconfig
cp .gitignore ~/.gitignore_global
cp -R homestead.yaml ~/Homestead/homestead.yaml
