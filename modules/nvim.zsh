source "$HOME/.dotfiles/lib/functions.zsh"
source "$HOME/.dotfiles/lib/profile.zsh"

CONFIG="$(config_dir)/nvim"
SOURCE="$(dotfiles_dir)/config/nvim"

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
    "$(data_dir)/nvim" \
    "$(state_dir)/nvim" \
    "$(cache_dir)/nvim" \
    "$CONFIG"
}
