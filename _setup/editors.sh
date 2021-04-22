#!/bin/sh

. "$DOTFILES_DIR/vscode/extensions.sh"
apm install --packages-file "$DOTFILES_DIR/atom/package.list"
