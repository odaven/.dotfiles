source "$HOME/.dotfiles/lib/profile.zsh"

CONFIG="$XDG_CONFIG_HOME/nvim"
SOURCE="$DOTFILES/config/nvim"

_link() {
  rm -rf "$CONFIG"
  ln -sfv "$1" "$CONFIG"
}

config() {
  if is_raspberry_pi; then
    config_minimal
  else
    config_full
  fi
}

config_minimal() {
  _link "$SOURCE/minimal"
}

config_full() {
  _link "$SOURCE"
}

none() {
  rm -rf "$CONFIG"
}

clean() {
  rm -rf \
    "$XDG_DATA_HOME/nvim" \
    "$XDG_STATE_HOME/nvim" \
    "$XDG_CACHE_HOME/nvim" \
    "$CONFIG"
}
