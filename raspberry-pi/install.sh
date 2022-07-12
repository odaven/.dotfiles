DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/raspberry-pi] Raspberry Pi Setup"

echo "[.dotfiles/raspberry-pi] Apt updating and upgrading"
sudo apt --assume-yes update
sudo apt --assume-yes upgrade

echo "[.dotfiles/raspberry-pi] Removing unwanted packages"
sudo apt --assume-yes remove vim-tiny

echo "[.dotfiles/raspberry-pi] Installing apt packages"
sudo apt --assume-yes install vim zsh curl wget git tmux snapd

echo "[.dotfiles/raspberry-pi] Installing snap packages"
sudo snap install core
sudo snap install nvim --classic

echo "[.dotfiles/raspberry-pi] Start zsh configuration"
source "$DOTFILES"/zsh/install.sh

echo "[.dotfiles/raspberry-pi] Start vim configuration"
source "$DOTFILES"/vim/install.sh

echo "[.dotfiles/raspberry-pi] Start nvim configuration"
source "$DOTFILES"/neovim/install.sh

echo "[.dotfiles/raspberry-pi] Tmux configuration"
source "$DOTFILES"/tmux/install.sh
