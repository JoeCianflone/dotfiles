#!/bin/sh

DOTFILES_DIR='~/.repositories/dotfiles'

if [ "$DOTFILES_DIR" = "" ]
then
    echo "Cannot continue until you set DOTFILES_DIR in start.sh"
    exit
fi

echo -n "Enter your email address to generate an SSH key (leave blank for no ssh key): "
read email

if [ "$email" != "" && "$email" != " " ]
then
    ssh-keygen -t rsa -C "$email"
fi

# Install Homebrew _____________________________________________________________
echo "Installing Homebrew and packages..."
. "$DOTFILES_DIR/_setup/brew.sh"

# Install Fonts ________________________________________________________________
echo "Installing Fonts..."
. "$DOTFILES_DIR/_setup/fonts.sh"

# Install PHP __________________________________________________________________
echo "Installing PHP pecls and global composer files...."
. "$DOTFILES_DIR/_setup/php.sh"

# Install Yarn _________________________________________________________________
echo "Installing Yarn...."
. "$DOTFILES_DIR/_setup/yarn.sh"

# Install Casks ________________________________________________________________
echo "Installing Casks..."
. "$DOTFILES_DIR/_setup/casks.sh"

# Install Folders ______________________________________________________________
echo "Installing Valet and Code Download..."
. "$DOTFILES_DIR/_setup/github.sh"

# Install VSCode Settings _____________________________________________________
echo "Installing Editors..."
. "$DOTFILES_DIR/_setup/editors.sh"

# Symlinks _____________________________________________________________________
echo "Setting up symlinks..."
. "$DOTFILES_DIR/_setup/links.sh"