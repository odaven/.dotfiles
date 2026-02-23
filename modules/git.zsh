source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/git" "$(config_dir)/git"
}
