dotfiles
========

This repository contains my configuration files for OS X shell operations, except fir `vim` and `emacs`.
It should be cloned in the home direcotry, so that the complete path is `~/dotfiles`, in order to take advantage of the included setup script.
The setup script is copied from [Michael Smalley](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/), and for any file in the same directory it backs up any existing copy with the same name in the home folder to a `~/dotfiles_old/` directory, and then create symlinks in the home directory pointing to the repository file. The files in the repository do not have an initial dot, but the symlinks will.

Installation
------------

    git clone git://github.com/galli-a/dotfiles ~/dotfiles
	cd ~/dotfiles
	./mklinks.sh
