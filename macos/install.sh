DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos] MacOs Setup"

echo "[.dotfiles/macos] Install homebrew"
source "$DOTFILES"/brew/install.sh

echo "[.dotfiles/macos] Installing software with homebrew"
source with-brew.sh

echo "[.dotfiles/macos] Installing software with npm"
source with-npm.sh

echo "[.dotfiles/macos] Start zsh configuration"
source "$DOTFILES"/zsh/install.sh

echo "[.dotfiles/macos] Start vim configuration"
source "$DOTFILES"/vim/install.sh
