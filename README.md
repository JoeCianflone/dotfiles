# DevStart

I'm a lazy developer, but I'm also fairly opinionated about my system setup. I need a way to install everything I need for a new dev system, without searching. DevStart is my answer. This gets any computer I need up and running as a developer machine in a couple of minutes. 

## What gets installed

One thing to note: I'm a PHP developer, so this is a build for a PHP developer. I'm sure you can add things to it if you're a GO developer or Ruby, but it's not all coming out-of-the-box. Here's what you get though:

1. Latest version of PHP 
2. A great looking Bash prompt with Git integration
3. Latest version of Ruby and rbenv
4. Laravel Homestead
5. Laravel Valet
6. Homebrew
7. Node/NPM



## Install Instructions

1. Clone the repo
2. `cd` into the directory
3. run `start.sh`
4. wait

## Notes

### PHP Version
By default this will install PHP 7.2, if you want to use PHP 7.1 or 7.0 or PHP 5.6 you'll need to comment out the PHP72 stuff and uncomment the PHP5X stuff you want. You'll also need to uncomment the corresponding line in the `.bash_profile`

I also exclude all image types from search by default. This also means you won't see images in your sidebar. If you'd like to see images, you're going to need to look at the `file_exclude_patterns` section in the `Preferences.sublime-settings` JSON file and update accordingly.


# License

The MIT License (MIT)
Copyright (c) 2015-2018 Joe Cianflone

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
