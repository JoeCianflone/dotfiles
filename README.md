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

The OBS settings are going to need to be imported manually, there's no way to do that via the CLI. Also stream keys are ignored and not saved out (for obvious reasons). You'll need to regenerate them and add them into OBS manually too. If you don't know what OBS even is, you should probably just comment that line out.

## Notes

- I used to copy over the files from the `dots` folder to my home folder. This worked fine, but as you make changes to them, things get out of sync. As a result of this I've decided that they will be symlinked. See `_setup/links.sh` to understand.
