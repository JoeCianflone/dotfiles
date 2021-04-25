#!/bin/sh

echo "Symlinking to this dotfiles folder..."

ln -sfv "$DOTFILES_DIR/dots/.gemrc" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.zprofile" ~
ln -sfv "$DOTFILES_DIR/dots/.zshrc" ~
ln -sfv "$DOTFILES_DIR/dots/jc-steeef.zsh-theme" ~/.oh-my-zsh/themes/jc-steeef.zsh-theme

# This file gets generated automatically by VSCode and Atom  so you need to delete 
# them before you're able to symlink
rm -Rf ~/Library/Application\ Support/Code/User/settings.json 
rm -Rf ~/Library/Application\ Support/Code/User/keybindings.json 
rm -Rf  ~/.atom/config.cson
rm -Rf  ~/.atom/keymap.cson

ln -sfv "$DOTFILES_DIR/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json 
ln -sfv "$DOTFILES_DIR/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json 
ln -sfv "$DOTFILES_DIR/atom/config.cson" ~/.atom/config.cson
ln -sfv "$DOTFILES_DIR/atom/keymap.cson" ~/.atom/keymap.cson