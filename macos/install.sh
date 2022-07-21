DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos] MacOS Setup"

echo "[.dotfiles/macos] Install homebrew"
source "$DOTFILES"/brew/install.sh

echo "[.dotfiles/macos] Installing software with homebrew"
source "$DOTFILES"/macos/with-brew.sh

echo "[.dotfiles/macos] Start zsh configuration"
source "$DOTFILES"/zsh/install.sh

echo "[.dotfiles/macos] Start vim configuration"
source "$DOTFILES"/vim/install.sh

echo "[.dotfiles/macos] Start nvim configuration"
source "$DOTFILES"/neovim/install.sh

echo "[.dotfiles/macos] MacOS settings"
source "$DOTFILES"/macos/os-settings.sh

echo "[.dotfiles/macos] Tmux configuration"
source "$DOTFILES"/tmux/install.sh
