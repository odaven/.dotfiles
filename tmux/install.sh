DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/tmux] Creating soft link"
ln -sfv "$DOTFILES"/tmux/tmux ~/.config

echo "[.dotfiles/tmux] Installing tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
