#!/bin/sh

. "$DOTFILES_HOME/vscode/extensions.sh"
apm install --packages-file "$DOTFILES_HOME/atom/package.list"
