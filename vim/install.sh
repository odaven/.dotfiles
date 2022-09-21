DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/vim] Creating soft link $DOTFILES/vim/.vimrc into home directory"
ln -sfv "$DOTFILES"/vim/.vimrc ~/.vimrc

echo "[.dotfiles/vim] Downloading vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


vim +PlugInstall +qall
