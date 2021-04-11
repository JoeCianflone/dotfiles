# Dotfiles

I think every developer knows what these are by now. These are mine, plus some extra stuff to make switching to a new computer easier for me. If you want to run the installer, you'll need to fork this and adjust.

## Step 1: Install

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JoeCianflone/dotfiles/main/install.sh)"
```

This is going to set up the following folder structure inside your `~` directory

```
.repositories
   /dotfiles
   /Notes
   /Sites
   /Videos
```

It will then download the dotfiles repo to `~.repositories/dotfiles` and you will need to then go there to run the start command.

## Step 2: Run `start.sh`

You'll need to `cd` into the correct folder then you can run `start.sh` that will handle the rest for you. There are a couple of prompts in the beginning you'll need to follow.

## Step 3: Manual Stuff

The OBS settings are going to need to be imported manually, there's no way to do that via the CLI.
