DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/tmux] Creating soft link"
ln -sfv "$DOTFILES"/tmux/tmux ~/.config
