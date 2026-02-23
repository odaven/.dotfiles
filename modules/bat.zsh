source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/bat" "$(config_dir)/bat"
  bat cache --build
}
