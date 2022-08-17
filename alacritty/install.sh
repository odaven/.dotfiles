DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/alacritty] Creating soft link"
ln -sfv "$DOTFILES"/alacritty/alacritty ~/.config
