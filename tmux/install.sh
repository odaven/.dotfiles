DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/tmux] Creating soft link"
ln -sfv "$DOTFILES"/tmux/.tmux.conf ~/.tmux.conf
