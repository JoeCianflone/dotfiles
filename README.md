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

## What this does in what order

2. Ask for email
3. Set SSH keys
   - Copy SSH key and drop into Github whil the rest is going on
4. Install Homebrew
5. Install Fonts
6. Install PHP
7. Install Composer Deps
8. Install Yarn Deps
9. Symlink `dots`
10. Clone from Github
11. Install Casks
12. Symlink vscode & atom settings
