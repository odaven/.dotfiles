echo "[.dotfiles/brew] Homebrew Setup"
if test ! $(which brew); then
  echo "[.dotfiles/brew] Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "[.dotfiles/brew] Homebrew was already installed"
fi
