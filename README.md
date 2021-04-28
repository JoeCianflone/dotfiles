# Dotfiles

I think every developer knows what these are by now. These are mine, plus some extra stuff to make switching to a new computer easier for me. If you want to run the installer, you'll need to fork this and adjust.

## Step 1: Install

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JoeCianflone/dotfiles/main/install.sh)"
```

### Important Assumption

The way that I run my dots is out of a specific folder: `~/.respositories`. I know some people like to copy files and some people like to use a `bare` repo in their `$HOME` folder. I don't do this. You could probably make these files work in that way, but I have no idea how to do that. Please note the folder that this does create. It does have a dot in the name: `.repositories` if you don't like that or if you want to move this around you're going to not want to use the installer link above. You're going to need to fork this, make your updates and then use it. 

The installer is going to create the following folder structure: 

```
.repositories
   /dotfiles
   /Notes
   /Sites
   /Videos
```

It will then download the dotfiles repo to `~/.repositories/dotfiles` and you will need to then go there to run the start command.

## Step 2: Run `start.sh`
