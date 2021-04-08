#!/bin/sh

echo -n "Enter your name: "
read name

echo -n "Enter your email address: "
read email

echo -n "Enter your user folder: "
read user

echo -n "Generate an SSH key for $email? (y/n) "
read genssh

if [ "$genssh" = "y" ]
then
    ssh-keygen -t rsa -C "$email"
fi

sed -i '' 's/_USER_/'$user'/g' .gitconfig
sed -i '' 's/_EMAIL_/'$email'/g' .gitconfig
sed -i '' 's/_NAME_/'$name'/g' .gitconfig

# Install Homebrew ____________________________________________________________
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install rust and rustup _____________________________________________________
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup default nightly

# Install PHP _________________________________________________________________
pecl install xdebug
pecl install yaml
pecl install redis
pecl install imagick

# Install some global NPM packages ____________________________________________
yarn global add vue-cli
yarn global add webpack
yarn global add typescript
yarn global add parcel-bundler

# Install some global Composer packages ______________________________________
composer global require laravel/installer
composer global require hirak/prestissimo
composer global require phpunit/phpunit
composer global require phpstan/phpstan






