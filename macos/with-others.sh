DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos/with-others] Installing node"
nvm install --lts

echo "[.dotfiles/macos/with-others] Installing python"
pyenv install 3.10.4
pyenv global 3.10.4