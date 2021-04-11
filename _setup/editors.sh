#!/bin/sh

cd ~
valet install

cd "$DOTFILES_DIR/Sites"

cd SHYFT
valet park

git clone github.com/JoeCianflone/community.git
git clone github.com/JoeCianflone/beckerballot.git

cd ../PROJECTS
valet park

cd ../RUTGERS
valet park

cd "$DOTFILES_DIR/Notes"
git clone github.com/JoeCianflone/Notes .