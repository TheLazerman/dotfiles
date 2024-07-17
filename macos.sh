#!/bin/bash

echo "[macos] INFO: Installation Started"
mkdir "$HOME/Documents/Development"
~/dotfiles/brew.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf "$HOME/dotfiles/files/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
~/dotfiles/macos_config.sh
echo "[macos] INFO: Installation Complete"