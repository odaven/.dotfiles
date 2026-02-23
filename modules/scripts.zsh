source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  local dotfiles_root="$(dotfiles_dir)"
  local target_dir="$(local_bin_dir)/common"

  "$dotfiles_root/bin/link" "scripts" "$target_dir"
}
