source "$HOME/.dotfiles/lib/functions.zsh"
source "$HOME/.dotfiles/lib/profile.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/fd" "$(config_dir)/fd"

  if is_raspberry_pi; then
    ln -sfv "$(command -v fdfind)" "$(local_bin_dir)/fd"
  fi
}
