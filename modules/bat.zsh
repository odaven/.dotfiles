source "$HOME/.dotfiles/lib/profile.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/bat" "$XDG_CONFIG_HOME/bat"

  if is_raspberry_pi; then
    batcat cache --build
  else
    bat cache --build
  fi
}
