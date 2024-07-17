#!/bin/bash

echo "[install] INFO: Installation Started"

# Create the symlinks for our dotfiles
~/dotfiles/create_symlink.sh


# If were running on macos, do the thing for macos..
if [[ "$(uname)" == "Darwin" ]]; then
    ~/dotfiles/macos.sh
fi

echo "[install] INFO: Installation Finished"