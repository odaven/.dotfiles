is_raspberry_pi() {
  [[ -n "${DOTFILES_RASPBERRY_PI:-}" ]]
}
