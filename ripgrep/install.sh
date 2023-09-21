DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/ripgrep] Creating soft link"
ln -sfv "$DOTFILES"/ripgrep ~/.config
