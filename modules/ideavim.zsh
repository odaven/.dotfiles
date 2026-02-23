source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/ideavim" "$(config_dir)/ideavim"
}
