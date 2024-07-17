#!/bin/bash

echo "[macos] INFO: Installation Started"
~/dotfiles/brew.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
~/dotfiles/macos_config.sh
echo "[macos] INFO: Installation Complete"