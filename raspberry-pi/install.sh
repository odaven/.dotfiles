SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "[.dotfiles/raspberry-pi] Raspberry Pi Setup"

echo "[.dotfiles/raspberry-pi] Apt updating and upgrading"
sudo apt --assume-yes update
sudo apt --assume-yes upgrade

echo "[.dotfiles/raspberry-pi] Removing unwanted packages"
sudo apt --assume-yes remove vim-tiny

echo "[.dotfiles/raspberry-pi] Installing packages"
sudo apt --assume-yes install vim zsh curl wget git

echo "[.dotfiles/raspberry-pi] Start zsh configuration"
source $SCRIPTPATH/../zsh/install.sh

echo "[.dotfiles/raspberry-pi] Start vim configuration"
source $SCRIPTPATH/../vim/install.sh
