SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "[.dotfiles/macos] MacOs Setup"

echo "[.dotfiles/macos] Install homebrew"
source $SCRIPTPATH/../brew/install.sh

echo "[.dotfiles/macos] Installing software with homebrew"
source with-brew.sh

echo "[.dotfiles/macos] Installing software with npm"
source with-npm.sh

echo "[.dotfiles/macos] Start zsh configuration"
source $SCRIPTPATH/../zsh/install.sh

echo "[.dotfiles/macos] Start vim configuration"
source $SCRIPTPATH/../vim/install.sh
