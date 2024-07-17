#!/bin/bash

echo "[macos] INFO: Installation Started"

mkdir "$HOME/Documents/Development"

~/dotfiles/brew.sh

if [ ! $HOME/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ln -sf "$HOME/dotfiles/files/com.googlecode.iterm2.plist" "$HOME/Library/Application Support/iTerm2/DynamicProfiles/com.googlecode.iterm2.plist"
# ln -sf "$HOME/dotfiles/files/DefaultProfile.json" "$HOME/.config/iterm/DefaultProfile.json"

~/dotfiles/macos_config.sh


echo "[macos] INFO: Installation Complete"
echo "[macos] INFO: Restarting ZSH"

exec zsh