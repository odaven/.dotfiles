source "$HOME/.dotfiles/lib/functions.zsh"

CONFIG="$(config_dir)/nvim"
REPO_DIR="$HOME/.nvim"
REPO_HTTP="https://github.com/odaven/.nvim.git"
REPO_SSH="git@github.com:odaven/.nvim.git"

_clone() {
  rm -rf "$REPO_DIR"

  if git ls-remote "$REPO_SSH" >/dev/null 2>&1; then
    git clone "$REPO_SSH" "$REPO_DIR"
  else
    git clone "$REPO_HTTP" "$REPO_DIR"
  fi
}

_link() {
  rm -rf "$CONFIG"
  ln -sfv "$1" "$CONFIG"
}

config() {
  _clone
  default
}

config_minimal() {
  _clone
  minimal
}

default() {
  _link "$REPO_DIR"
}

minimal() {
  _link "$REPO_DIR/minimal"
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
