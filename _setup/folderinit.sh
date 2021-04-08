#!/bin/sh

# Dev Folders Ready ___________________________________________________________
mkdir ~/Sites
cd ~/Sites

mkdir PROJECTS
mkdir SHYFT

# Streaming Folders ___________________________________________________________
mkdir ~/Recordings
cd ~/Recordings

mkdir OBS_IMPORTS
mkdir ZOOM
mkdir RAW_STREAMS
mkdir DAVINCI_OPTIMIZED_MEDIA
mkdir FINAL_RENDERS

# Notes Folder Ready __________________________________________________________
cd ~
mkdir Notes
cd Notes

git clone git@github.com:JoeCianflone/Notes.git .

# Install Homestead ___________________________________________________________
cd ~
composer global require laravel/valet
valet install

# Install Github Repos ________________________________________________________
cd ~/Sites
valet park

cd ../SHYFT
valet park

git clone git@github.com:JoeCianflone/beckerballot.git
git clone git@github.com:JoeCianflone/mycommunitysite.git

cd ../PROJECTS
valet park