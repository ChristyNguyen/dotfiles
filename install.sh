#!/bin/bash

CURRENT_DIR=$(pwd)
VIMRC=$CURRENT_DIR += "vimrc"
INSTALL_TO=$HOME += ".vimrc"

echo "Symlinking dotfiles to $HOME..."

if [ -f $VIMRC ]; then
    ln -sf $VIMRC $INSTALL_TO
else
   echo "File $VIMRC does not exist."
fi

echo "Done."