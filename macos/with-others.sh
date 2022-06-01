DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos/with-others] Installing node"
nvm install --lts

echo "[.dotfiles/macos/with-others] Installing python"
python_version="3.10.4"
pyenv install $python_version
pyenv global $python_version