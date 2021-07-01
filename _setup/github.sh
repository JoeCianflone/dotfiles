#!/bin/sh
$ALLGOOD='n'

echo "Before we can run this code you need to have copied your SSH key into Github, have you done that? (y/n)?"
read keycopied

if [ "$keycopied" = "n" ]
then
    echo "Would you like to copy the key now? If you don't this script wont run (y/n)?"
    read copynow

    if [ "$copynow" = "y" ]
    then
        pbcopy < $HOME/.ssh/id_rsa.pub
        echo "key copied...ready to run this? (y/n)"
        read readytogo

        if [ "$readytogo" = "y" ]
        then
            $ALLGOOD='y'
        fi
    fi
fi

if [$ALLGOOD='y']
then
cd ~
valet install

cd "$DOTFILES_HOME/Sites"

cd SHYFT
git clone  git@github.com:JoeCianflone/community.git
git clone  git@github.com:JoeCianflone/beckerballot.git

valet park

cd ../PROJECTS
git clone git@github.com:JoeCianflone/buildo-baggins.git
valet park

cd ../RUTGERS
git clone git@github.com:JoeCianflone/rutgers-web-2-students.git web2-students
git clone git@github.com:JoeCianflone/rutgers-web-2-teachers.git web2-teachers

valet park

cd "$DOTFILES_HOME/Notes"
git clone git@github.com:/JoeCianflone/Notes .

cd "$DOTFILES_HOME/Video/"
git clone git@github.com:JoeCianflone/video-assets.git ASSETS

cd "$DOTFILES_HOME/IHaveTheRecepits/"
git clone git@github.com:JoeCianflone/IHaveTheRecepits.git .

fi
