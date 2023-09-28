DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/bat] Creating soft link"
ln -sfv "$DOTFILES"/bat ~/.config
