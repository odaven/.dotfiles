DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/.local/bin] Creating soft link"
ln -sfv "$DOTFILES"/bin ~/.local
