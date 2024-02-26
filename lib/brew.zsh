#!/usr/bin/env zsh

function install_brew() {
  if test ! "$(which brew)"; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Homebrew was already installed"
  fi
}
