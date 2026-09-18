source "$HOME/.dotfiles/lib/functions.zsh"

CONFIG="$(config_dir)/nvim"
SOURCE="$(dotfiles_dir)/config/nvim"

_link() {
  rm -rf "$CONFIG"
  ln -sfv "$1" "$CONFIG"
}

config() {
  _link "$SOURCE"
}

config_minimal() {
  _link "$SOURCE/minimal"
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
