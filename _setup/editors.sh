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
fi
