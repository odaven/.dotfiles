echo "[.dotfiles/neovim] Creating soft links"
ln -sfv ~/.dotfiles/neovim/nvim ~/.config

echo "[.dotfiles/neovim] Install packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "[.dotfiles/neovim] Installing plugins"
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
