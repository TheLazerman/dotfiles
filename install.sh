#!/bin/bash

echo "[install] INFO: Installation Started"

# If were running on macos, do the thing for macos..
if [[ "$(uname)" == "Darwin" ]]; then
    ~/dotfiles/macos.sh
fi

# Create the symlinks for our dotfiles
~/dotfiles/create_symlink.sh

echo "[install] INFO: Installation Finished"