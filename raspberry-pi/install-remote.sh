DOTFILES="$HOME/.dotfiles"

echo
echo "[.dotfiles/raspberry-pi/install-remote] Update system and install software"
sudo apt --assume-yes update
sudo apt --assume-yes upgrade
sudo apt --assume-yes install curl git

echo
echo "[.dotfiles/raspberry-pi/install-remote] Clone .dotfiles"
rm -rf $DOTFILES
git clone -b master https://github.com/odaven/.dotfiles.git $DOTFILES

echo
echo "[.dotfiles/raspberry-pi/install-remote] Start installation"
bash $DOTFILES/raspberry-pi/install.sh
