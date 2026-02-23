source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/sqlite3" "$(config_dir)/sqlite3"
}
