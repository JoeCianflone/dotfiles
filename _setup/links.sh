#!/bin/sh

echo "Symlinking to this dotfiles folder..."

ln -sfv "$DOTFILES_HOME/dots/.gemrc" ~
ln -sfv "$DOTFILES_HOME/dots/.gitconfig" ~
ln -sfv "$DOTFILES_HOME/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_HOME/dots/.zprofile" ~
ln -sfv "$DOTFILES_HOME/dots/.zshrc" ~
ln -sfv "$DOTFILES_HOME/dots/jc-steeef.zsh-theme" ~/.oh-my-zsh/themes/jc-steeef.zsh-theme

# This file gets generated automatically by VSCode and Atom  so you need to delete 
# them before you're able to symlink
rm -Rf ~/Library/Application\ Support/Code/User/settings.json 
rm -Rf ~/Library/Application\ Support/Code/User/keybindings.json 
rm -Rf  ~/.atom/config.cson
rm -Rf  ~/.atom/keymap.cson

ln -sfv "$DOTFILES_HOME/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json 
ln -sfv "$DOTFILES_HOME/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json 
ln -sfv "$DOTFILES_HOME/atom/config.cson" ~/.atom/config.cson
ln -sfv "$DOTFILES_HOME/atom/keymap.cson" ~/.atom/keymap.cson
