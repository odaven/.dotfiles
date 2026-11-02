source "$HOME/.dotfiles/lib/profile.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/fd" "$XDG_CONFIG_HOME/fd"

  if is_raspberry_pi; then
    mkdir -p "$XDG_BIN_HOME"
    ln -sfv "$(command -v fdfind)" "$XDG_BIN_HOME/fd"
  fi
}
