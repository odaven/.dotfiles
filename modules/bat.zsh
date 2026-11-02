source "$HOME/.dotfiles/lib/functions.zsh"
source "$HOME/.dotfiles/lib/profile.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/bat" "$(config_dir)/bat"

  if is_raspberry_pi; then
    batcat cache --build
  else
    bat cache --build
  fi
}
