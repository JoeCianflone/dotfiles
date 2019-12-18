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

# Install Homebrew ____________________________________________________________
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install rust and rustup _____________________________________________________
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup default nightly

# Install some homebrew things ________________________________________________
brew install wget

brew install bash
brew install bash-completion
brew install ruby
brew install node

brew install icdiff
brew install git
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

brew install sass/sass/sass

# Install PHP _________________________________________________________________
brew install php # latest version of PHP

pecl install xdebug
pecl install yaml
pecl install redis
pecl install imagick

# Install some global NPM packages ____________________________________________
yarn global add vue-cli
yarn global add webpack
yarn global add typescript

# Install some global Composer packages ______________________________________
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit

# Dev Folders Ready ___________________________________________________________
mkdir ~/Sites
cd ~/Sites

mkdir CLIENTS
mkdir PROJECTS
mkdir OPEN-SOURCE
mkdir SHYFT

# Create your SSH ket _________________________________________________________
echo -n "Generate an SSH key for $email? (y/n) "
read genssh

if [ "$genssh" = "y" ]
then
    ssh-keygen -t rsa -C "$email"
fi


# Install Homestead ___________________________________________________________
cd ~
git clone https://github.com/laravel/homestead.git ~/Homestead
cd ~/Homestead
bash init.sh

# Install Github Repos ________________________________________________________
cd ~/Sites

cd SHYFT
git clone git@github.com:JoeCianflone/beckerballot.git
git clone git@github.com:JoeCianflone/mycommunitysite.git

cd PROJECTS
git clone git@github.com:JoeCianflone/rebase.git

cd ../OPEN-SOURCE
git clone git@github.com:lysyi3m/macos-terminal-themes.git


# Copy some files over to the right place _____________________________________
cp .bash_profile  ~/.bash_profile
cp .gemrc ~/.gemrc
cp .gitconfig ~/.gitconfig
cp .gitignore ~/.gitignore_global
cp -R homestead.yaml ~/Homestead/homestead.yaml
