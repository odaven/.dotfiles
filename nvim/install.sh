DOTFILES="$HOME/.dotfiles"

rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim

echo "[.dotfiles/nvim] Creating soft links"
mkdir -p ~/.config
ln -sfv "$DOTFILES"/nvim ~/.config

