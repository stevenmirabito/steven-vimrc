#!/bin/bash

# Move to directory of script
OLDDIR=`pwd`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Backup old vimrc files
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi;
if [ -f ~/.vimrc_plugins ]; then
	mv ~/.vimrc_plugins ~/.vimrc_plugins.old
fi;

# Create hardlinks between local vimrc files and the actual vimrc files
ln -F .vimrc ~/
ln -F .vimrc_plugins ~/

# Install vim-plug (https://github.com/junegunn/vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clean/install bundles
vim -u .vimrc_setup

# Return to original dir
cd $OLDDIR
