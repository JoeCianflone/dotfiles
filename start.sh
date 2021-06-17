#!/bin/sh

DOTFILES_HOME='~/.repositories/dotfiles'

if [ "$DOTFILES_HOME" = "" ]
then
    echo "Cannot continue until you set DOTFILES_HOME in start.sh"
    exit
fi

echo -n "Enter your email address needed for your SSH key: "
read email


if [ "$sshKey" == "" || "$sshKey" == " " || "$sshKey" == "Y" || "$sshKey" == "y" ]
then
    ssh-keygen -t rsa -C "$email"
fi

# Hide the login time of the terminal _________________________________________
echo "Hushlogin..."
touch ~/.hushlogin

# Install Homebrew _____________________________________________________________
echo "Installing Homebrew and packages..."
. "$DOTFILES_HOME/_setup/brew.sh"

# Install Fonts ________________________________________________________________
echo "Installing Fonts..."
. "$DOTFILES_HOME/_setup/fonts.sh"

# Install PHP __________________________________________________________________
echo "Installing PHP pecls and global composer files...."
. "$DOTFILES_HOME/_setup/php.sh"

# Install Yarn _________________________________________________________________
echo "Installing Yarn...."
. "$DOTFILES_HOME/_setup/yarn.sh"

# Install Casks ________________________________________________________________
echo "Installing Casks..."
. "$DOTFILES_HOME/_setup/casks.sh"

# Install Folders ______________________________________________________________
echo "Installing Valet and Code Download..."
. "$DOTFILES_HOME/_setup/github.sh"

# Install VSCode Settings _____________________________________________________
echo "Installing Editors..."
. "$DOTFILES_HOME/_setup/editors.sh"

# Symlinks _____________________________________________________________________
echo "Setting up symlinks..."
. "$DOTFILES_HOME/_setup/links.sh"