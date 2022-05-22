echo "[.dotfiles/neovim] Creating soft links"
ln -sfv ~/.dotfiles/neovim/nvim ~/.config
ln -sfv ~/.config/nvim/init.vim ~/.ideavimrc

echo "[.dotfiles/neovim] Install Vim-Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "[.dotfiles/neovim] Installing plugins"
nvim +PlugInstall +qall
