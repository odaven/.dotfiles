source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/ripgrep" "$(config_dir)/ripgrep"
}
