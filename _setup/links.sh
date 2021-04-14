#!/bin/sh

echo "Symlinking to this dotfiles folder..."

ln -sfv "$DOTFILES_DIR/dots/.gemrc" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.zprofile" ~
ln -sfv "$DOTFILES_DIR/dots/.zshrc" ~


