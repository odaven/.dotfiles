DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/nvim] Creating soft links"
mkdir -p ~/.config
ln -sfv "$DOTFILES"/nvim ~/.config

echo "[.dotfiles/nvim] Install packer.nvim"
rm -rf ~/.local/share/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "[.dotfiles/nvim] Installing plugins"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' > /dev/null 2>&1
