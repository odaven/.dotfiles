source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  dot
}

clean() {
  rm -rf "$(data_dir)/nvim" "$(state_dir)/nvim" "$(cache_dir)/nvim" "$(config_dir)/nvim"
}

dev() {
  local src="$HOME/Dev/nvim"
  local dest="$(config_dir)/nvim"
  [[ -e $dest || -L $dest ]] && rm -rf "$dest"
  ln -sv "$src" "$dest"
}

dot() {
  git -C "$HOME/.dotfiles" submodule update --init --recursive --remote --force
  "$HOME/.dotfiles/bin/link" "config/nvim" "$(config_dir)/nvim"
}