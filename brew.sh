#!/bin/bash

echo "[brew] INFO: Installation started"

# Set-up
# ======
# Install Homebrew if it's not installed already
if ! brew_loc="$(type -p brew)" || [[ -z "$brew_loc" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# If necessary, update all installed packages
brew update
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Packages
# ========
brew bundle

brew cleanup

echo "[brew] INFO: Installation finished"