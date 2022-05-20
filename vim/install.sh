SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "[.dotfiles/vim] Creating soft link $SCRIPTPATH/.vimrc into home directory"
ln -sf $SCRIPTPATH/.vimrc ~/.vimrc
ln -sf $SCRIPTPATH/.ideavimrc ~/.ideavimrc

echo "[.dotfiles/vim] Downloading vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
