DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/npm] Creating soft link"
ln -sfv "$DOTFILES"/npm ~/.config
