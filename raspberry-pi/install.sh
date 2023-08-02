DOTFILES="$HOME/.dotfiles"
XDG_CONFIG_HOME="$HOME/.config"

# Creating folders
[ ! -d "$XDG_CONFIG_HOME" ] && mkdir -p "$XDG_CONFIG_HOME"
[ ! -d ".raspberry-pi" ] && mkdir -p ".raspberry-pi"

echo
echo "[.dotfiles/raspberry-pi] Raspberry Pi Setup"

echo
echo "[.dotfiles/raspberry-pi] Adding apt repositories"
sudo apt --assume-yes install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

echo
echo "[.dotfiles/raspberry-pi] Apt updating and upgrading"
sudo apt --assume-yes update
sudo apt --assume-yes upgrade

echo
echo "[.dotfiles/raspberry-pi] Removing unwanted packages"
sudo apt --assume-yes remove vim-tiny

echo
echo "[.dotfiles/raspberry-pi] Installing apt packages"
sudo apt --assume-yes install vim zsh curl wget git tmux snapd ansible

echo
echo "[.dotfiles/raspberry-pi] Installing snap packages"
sudo snap install core
sudo snap install nvim --classic

echo
echo "[.dotfiles/raspberry-pi] Start zsh configuration"
bash "$DOTFILES"/zsh/install.sh

echo
echo "[.dotfiles/raspberry-pi] Start vim configuration"
bash "$DOTFILES"/vim/install.sh

echo
echo "[.dotfiles/raspberry-pi] Start nvim configuration"
bash "$DOTFILES"/nvim/install.sh

echo
echo "[.dotfiles/raspberry-pi] Tmux configuration"
bash "$DOTFILES"/tmux/install.sh

echo
echo "[.dotfiles/raspberry-pi] Finishing"
sudo apt --assume-yes autoremove

files_to_delete=(
"$HOME/.bash_history"
"$HOME/.bash_logout"
"$HOME/.bashrc"
"$HOME/.profile"
"$HOME/.zshrc"
"$HOME/.zsh_history"
)

for i in "${files_to_delete[@]}"
do
  if [ -f "$i" ]; then
      rm "$i"
  fi
done
