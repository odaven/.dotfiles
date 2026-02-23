source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/lazygit" "$(config_dir)/lazygit"
}
