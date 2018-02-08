# Dotfiles

I'm a lazy developer, but I'm also fairly opinionated about my system setup. I need a way to install everything I need for a new dev system, without searching. DevStart is my answer. This gets any computer I need up and running as a developer machine in a couple of minutes. 

## Install Instructions

1. Clone the repo
2. `cd` into the directory
3. run `start.sh`
4. follow prompts and wait

## Notes

### Manual Installs
Here's a list of things I'll need to install manually, because they're not in the App Store (assuming default install, of OS). 
+ AppCleaner
+ Chrome
+ Dropbox
+ FileZilla
+ Firefox
+ Firefox Developer Edition
+ Flux
+ OBS
+ Opera
+ SequelPro
+ Sketch
+ SkyFonts
+ Sophos
+ SublimeText
+ VLC
+ Vagrant
+ VirtualBox
+ VisualStudio Code
+ Zeplin
+ Zoom

### PHP Version
By default this will install PHP 7.2, if you want to use PHP 7.1 or 7.0 or PHP 5.6 you'll need to update the `start.sh` file and your `.bash_profile` too.

I also exclude all image types from search by default. This also means you won't see images in your sidebar. If you'd like to see images, you're going to need to look at the `file_exclude_patterns` section in the `Preferences.sublime-settings` JSON file and update accordingly.

# License

The MIT License (MIT)
Copyright (c) 2015-2018 Joe Cianflone

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
