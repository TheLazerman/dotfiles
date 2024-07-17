#!/bin/bash

cd ~/dotfiles/files || exit

dotfiles=$(ls -A)

for file in $dotfiles; do
    if [ -d "$file" ]; then
        rm -rf "${HOME:?}/$file"
    fi

    ln -sf "$HOME/dotfiles/files/$file" "$HOME/$file"

done

ln -sf "$HOME/dotfiles/files/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"