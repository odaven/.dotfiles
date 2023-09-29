DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/fzf] Creating soft link"
ln -sfv "$DOTFILES"/fzf ~/.config
