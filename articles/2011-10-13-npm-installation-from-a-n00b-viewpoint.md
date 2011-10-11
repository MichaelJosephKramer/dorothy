--- 
title: "npm: Installation from a N00b Viewpoint"
author: Michael Joseph Kramer
date: 2011/10/13
description: A description and tutorial for npm installation

Node.js is relatively new, and while the newness brings a lack of standardization among tools and packages, the community seems to have settled on NPM as the de facto standard package manager. ~


After you install Node.js, you'll probably want to install npm as well. A few other package managers are out there, 

The intertubes already have several resources about the basic npm functionality so I won't rehash them in detail, but it has the basic commands you'd expect from a package manager:

- `npm install <package>`
- `npm uninstall <package>`
- `npm update`
- `npm ls`
- `npm version`

The usual suspects are all there. A quick "`npm help`" will show you the full list.

## Should I compile Node.js myself, or use a package manager like Homebrew?

I've done both, and compiling Node.js yourself isn't as hard as it sounds. Installing it from a package manager is even easier. While a new Node.js release comes every couple of weeks, you can quickly install newer versions and switch between them using a version manager like n or nave.

## NPM Installation: to chown or not to chown?

Unlike Node.js itself, npm isn't in any of the package managers for OS X or Ubuntu. The recommended way to install it is via curl. This gist contains several methods for installation of both Node.js and npm: [https://gist.github.com/579814](https://gist.github.com/579814 "the installation gist") 

Yikes! I don't claim to be the most experienced POSIX OS user, but it's not my first day either, and I found that list to be a little overwhelming the first time I looked at it -- I just wanted to install it so it worked. I couldn't let it go, and as I started to break down the options in detail, I found they fall into two camps: those that install npm in `/usr/local` and those that install it the user's home directory. To make the whole install a little more confusing, I'd already installed Node.js using Homebrew, so I really just wanted to install npm.

As I criss-crossed the internet to find the "right" way to install it, I found I was in a deeper rabbit hole than I thought. Many hard-core unix guys were adamant that you shouldn't install to `/usr/local` because you either have to run the commands with sudo for elevated privileges or take ownership of the `/usr/local` directory with the `chown` command. Using sudo with every command is a bad idea because then the script you run can do *anything*, but if you just change ownership, it'll only have access to directories that are generally not essential to your operating system.

So why not just install it in the home directory? It seems easier. I remembered, however, that I'd *already* taken ownership of my `/usr/local` directory on my Mac because that's the recommended way to install Homebrew. Since I accidentally delete something I want to keep out of my home directory about every other day, I was happy to have it out of the way. 

## What about Ubuntu? Should I do it the same way?

I did. You'll want to install some npm packages globally, and for that to work you'll need to add the NODE_PATH variable to your .profile, .bashrc, or .zshrc. I like to use the same dotfiles for both my MPB and my Ubuntu machines, so I set it up the same way. When you install npm, it'll clearly tell you what you need to add to your shell's dotfile.

## Umm, thanks?

For the tl;dr crowd, don't spend as much time as I spent thinking about the npm installation. Install it based on your personal preference, and it'll probably work just fine, especially if you're on a one-user development machine. While at first I was looking for a 'just do this' blog post, now I appreciate the multiple configuration options.

In an upcoming post, I'll detail some tips and tricks for using npm.
