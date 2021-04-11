#!/bin/sh

cp "$DOTFILES_DIR/.vscode/settings.json" "~/vscode/settings.json"
. "$DOTFILES_DIR/vscode/extensions.sh"

apm install --packages-file "$DOTFILES_DIR/.atom/package.txt"
cp "$DOTFILES_DIR/atom/config.cson" "~/.atom/config.cson"
cp "$DOTFILES_DIR/atom/keymap.cson" "~/.atom/keymap.cson"