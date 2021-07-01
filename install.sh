#!/bin/sh

echo "This will install a folder called .repositories in your user folder"

cd ~
mkdir .repositories
cd .repositories

mkdir dotfiles
mkdir Notes
mkdir Sites
mkdir Videos
mkdir IHaveTheRecepits

cd Sites/
mkdir SHYFT
mkdir RUTGERS
mkdir PROJECTS

cd ../Videos
mkdir ASSETS
mkdir RAW
mkdir ZOOM
mkdir OPTIMIZED
mkdir RENDERED

cd ../dotfiles

git clone https://github.com/JoeCianflone/dotfiles.git .

cd ~.repositories

echo "Dotfiles are ready to start"
exit