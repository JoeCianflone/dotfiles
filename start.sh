#!/bin/sh

DOTFILES_DIR=''


if [ "$DOTFILES_DIR" = "" ]
then
    echo "Cannot continue until you set DOTFILES_DIR in start.sh"
    exit
fi

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
. "$DOTFILES_DIR/_setup/brew.sh"

# Install Fonts _______________________________________________________________
. "$DOTFILES_DIR/_setup/fonts.sh"

# Install PHP _______________________________________________________________
. "$DOTFILES_DIR/_setup/php.sh"

# Install Yarn _______________________________________________________________
. "$DOTFILES_DIR/_setup/yarn.sh"

# Symlinks _______________________________________________________________
. "$DOTFILES_DIR/_setup/links.sh"

# Install Folders _______________________________________________________________
. "$DOTFILES_DIR/_setup/folders.sh"

# Install Casks _______________________________________________________________
. "$DOTFILES_DIR/_setup/casks.sh"

# Install VSCode Settings _______________________________________________________________
# . "$DOTFILES_DIR/_setup/editors.sh"












